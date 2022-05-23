import 'dart:async';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mptmessenger/asset/strings.dart';
import 'package:mptmessenger/logic/chat_picker/chatpicker_cubit.dart';
import 'package:mptmessenger/logic/dialogs_keeper/dialogs_keeper_bloc.dart';
import 'package:mptmessenger/logic/firemessaging/firemessaging.dart';
import 'package:mptmessenger/logic/firestore/firestore.dart';
import 'package:mptmessenger/logic/message_worker/message_worker_cubit.dart';
import 'package:mptmessenger/logic/messenger/messenger_bloc.dart';
import 'package:mptmessenger/logic/pickers/pickers.dart';
import 'package:mptmessenger/model/chat_model.dart';
import 'package:mptmessenger/view/logic/image_picker.dart';
import 'package:mptmessenger/view/main%20screen/dialog/attachments_widget.dart';
import 'package:mptmessenger/view/main%20screen/dialog/forward_message_to_another_chat_widget.dart';
import 'package:mptmessenger/view/main%20screen/dialog/forwarded_message_widget.dart';
import 'package:mptmessenger/view/main%20screen/dialog/message_widget.dart';
import 'package:record/record.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:mptmessenger/asset/colors.dart';
import 'package:mptmessenger/model/another_user.dart';
import 'package:mptmessenger/model/user_model.dart';
import 'package:mptmessenger/view/main%20screen/finded_users_by_searcher.dart';
import 'package:mptmessenger/view/main%20screen/main_dialogs.dart';
import 'package:mptmessenger/view/standalone/default_neumorhicavatar_widget.dart';

class DialogWidget extends StatelessWidget {
  DialogWidget({Key? key, required this.constraints}) : super(key: key);
  BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    bool isNotWideScreen = !kIsWeb &&
        ((MediaQuery.of(context).size.width < 450 &&
                MediaQuery.of(context).size.height > 500) ||
            (MediaQuery.of(context).size.width > 450 &&
                MediaQuery.of(context).size.height < 500));
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => MessengerBloc(UserModel().lastChat!)),
        BlocProvider(create: (ctx) => MessageWorkerCubit())
      ],
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: SizedBox(
            height: constraints.maxHeight -
                (MediaQuery.of(context).viewInsets.bottom + 15),
            child: DialogsWindow(
                isWideScreenOrientation: false,
                child: BlocBuilder<ChatPickerCubit, ChatPickerState>(
                  builder: (ctx, state) => state.maybeWhen(
                    orElse: () => Container(),
                    loading: () => const NeumorphicProgressIndeterminate(
                      style: ProgressStyle(depth: -10),
                      duration: Duration(seconds: 1),
                      curve: Curves.easeInOutCubicEmphasized,
                    ),
                    initial: () {
                      return Container();
                    },
                    picked: (chat, attachedMessages) {
                      if (attachedMessages != null) {
                        Future.delayed(Duration.zero).then(
                          (value) => ctx
                              .read<MessageWorkerCubit>()
                              .addToAnswer(attachedMessages),
                        );
                      }

                      return ChatWidget(
                        isWideScreen: !isNotWideScreen,
                        chat: chat,
                        constraints: constraints,
                      );
                    },
                  ),
                ),
                constraints: constraints),
          ),
        ),
      ),
    );
  }
}

class ChatWidget extends StatelessWidget {
  const ChatWidget(
      {Key? key,
      required this.constraints,
      required this.chat,
      this.isWideScreen = true})
      : super(key: key);

  final BoxConstraints constraints;
  final ChatModel chat;
  final bool isWideScreen;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: EdgeInsets.all(isWideScreen ? 8 : 0),
        child: Neumorphic(
          style: NeumorphicStyle(depth: 3),
          child: _UpperChatPlank(
              isWideScreenLayout: isWideScreen,
              pickedUser: chat.users
                  .where(
                      (element) => element.uID != UserModel().signInAccount.uid)
                  .first,
              constraints: constraints),
        ),
      ),
      Expanded(
          child: Chat(
        interlocutor: chat.users
            .where((element) => element.uID != UserModel().signInAccount.uid)
            .first,
        constraints: constraints,
        currentChat: chat,
      )),
      _DownChatPlank(
        constraints: constraints,
        isWIdeScreen: isWideScreen,
      )
    ]);
  }
}

class Chat extends StatefulWidget {
  Chat(
      {Key? key,
      required this.currentChat,
      required this.constraints,
      required this.interlocutor})
      : super(key: key);
  ChatModel currentChat;
  BoxConstraints constraints;
  AnotherUser interlocutor;
  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  double progress = 0;
  late List<Map<ValueKey, Message>> pickedMessages;
  StreamSubscription? sub;
  late List<Map<String, dynamic>> currentMessages;
  late bool isSelection;
  late DocumentReference currentChatMessage;
  late ScrollController scrollController;
  late List<Map<ValueKey, Message>> forwardedMessages;
  Future<void> onData(DocumentSnapshot<Object?>? event) async {
    var bigMes = ChatMessage.fromMap(
            (event as DocumentSnapshot).data() as Map<String, dynamic>)
        .messages;
    currentChatMessage = event.reference;

    for (var i = 0; i < bigMes.length; i++) {
      if (bigMes.length == currentMessages.length + 1) i = bigMes.length - 1;
      bool isHidden = bigMes[i]
          .hidden!
          .where((e) => e!.id == UserModel().signInAccount.uid)
          .isNotEmpty;

      var isReaded = currentMessages.where((element) {
        var messageToCheck = element["message"] as Message;
        return messageToCheck.sendTime == bigMes[i].sendTime &&
            messageToCheck.sender.id == bigMes[i].sender.id &&
            messageToCheck.text == bigMes[i].text;
      }).toList();
      if (!isHidden && isReaded.isEmpty) {
        var currentMessage = bigMes[i];
        List<AnotherUser> readers = [];
        for (var reader in currentMessage.readedBy!) {
          var data = await (reader as DocumentReference).get();

          readers.add(AnotherUser.fromMap(
              data.data() as Map<String, dynamic>, data.id));
        }
        currentMessage.readedBy = readers;
        context
            .read<MessengerBloc>()
            .emit(MessengerState.messageGot(currentMessage, true, false));
      } else if (isHidden) {
        setState(() {
          currentMessages.removeWhere((element) {
            var mes = (element["message"] as Message);
            return mes.sendTime == bigMes[i].sendTime &&
                mes.sender.id == bigMes[i].sender.id &&
                mes.text == bigMes[i].text;
          });
        });
      } else if (bigMes[i]
              .readedBy!
              .cast<DocumentReference>()
              .toList()
              .where((element) => element.id == UserModel().signInAccount.uid)
              .isNotEmpty &&
          (isReaded.first["message"] as Message)
              .readedBy!
              .cast<AnotherUser>()
              .toList()
              .where((element) => element.uID == UserModel().signInAccount.uid)
              .isEmpty) {
        var currentMessage = bigMes[i];
        List<AnotherUser> readers = [];
        for (var element in currentMessage.readedBy!) {
          var data = await (element as DocumentReference).get();
          readers.add(AnotherUser.fromMap(
              data.data() as Map<String, dynamic>, data.id));
        }
        currentMessage.readedBy = readers;
        context
            .read<MessengerBloc>()
            .emit(MessengerState.messageGot(currentMessage, true, true));
      }
    }
  }

  @override
  void initState() {
    pickedMessages = [];
    forwardedMessages = [];
    FireMessaging.startRecieveNotifications(widget.currentChat.chatId);
    scrollController = ScrollController();
    scrollController.addListener(() {
      if (scrollController.position.pixels == scrollController.position.minScrollExtent)
      {
        
      }
    });
    isSelection = false;
    if (sub == null) {
      UserModel()
          .lastChat!
          .get()
          .then((value) =>
              ChatModel.fromMap(value.data() as Map<String, dynamic>, value.id))
          .then((value) {
        sub = value.chatMessages != null
            ? value.chatMessages!.last.snapshots().listen(onData)
            : null;
      });
    }

    currentMessages = [];

    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();

    sub!.cancel();
    super.dispose();
  }

  void deleteMessages(deleteType deletetype) {
    List<Message> valueList = [];
    pickedMessages.forEach((element) {
      element.values.forEach((message) {
        valueList.add(message);
      });
    });
    pickedMessages.clear();
    isSelection = false;
    Navigator.of(context).pop();
    context.read<MessageWorkerCubit>().deleteMessages(
        messages: valueList,
        deleteType: deletetype,
        usersId: deletetype == deleteType.forAll
            ? widget.currentChat.users.map((e) => e.uID).toList()
            : null,
        chatMessageReference: currentChatMessage);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<MessengerBloc, MessengerState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () => null,
            listeningStarted: (function) => sub!.onData(function),
            messageSended: (Message m) => sub == null
                ? UserModel()
                    .lastChat!
                    .get()
                    .then((value) => ChatModel.fromMap(
                        value.data() as Map<String, dynamic>, value.id))
                    .then((value) {
                    sub = value.chatMessages != null
                        ? value.chatMessages!.last.snapshots().listen(onData)
                        : null;
                  })
                : null,
            attachmentLoading: (percent, data, name) => setState(() {
              progress = percent;
            }),
            messageGot: (message, isCurrentUser, isNeedToUpdate) async {
              setState(() {
                Future.delayed(Duration.zero).then((value) => scrollController
                    .animateTo(scrollController.position.maxScrollExtent,
                        duration: const Duration(seconds: 1),
                        curve: Curves.fastLinearToSlowEaseIn));

                if (isNeedToUpdate && currentMessages.isNotEmpty) {
                  var emptyCheck = currentMessages.where((element) {
                    var messageToCheck = element["message"] as Message;
                    return messageToCheck.sendTime == message.sendTime &&
                        messageToCheck.sender.id == message.sender.id &&
                        messageToCheck.text == message.text;
                  }).toList();
                  currentMessages
                      .where((element) => element == emptyCheck.first)
                      .forEach((element) {
                    element["message"] = message;
                  });
                } else {
                  currentMessages.add(
                      {"message": message, "isCurrentUser": isCurrentUser});
                }
              });
            },
          );
        },
        child: SizedBox(
          width: widget.constraints.maxWidth,
          height: widget.constraints.maxHeight,
          child: currentMessages.isEmpty
              ? Text("Сообщений нема!")
              : Stack(
                  children: [
                    ListView.builder(
                      controller: scrollController,
                      addAutomaticKeepAlives: true,
                      itemBuilder: (ctx, i) {
                        var key = ValueKey(
                            (currentMessages[i]['message'] as Message)
                                    .sendTime
                                    .toString() +
                                "|" +
                                (currentMessages[i]['message'] as Message)
                                    .sender
                                    .id);
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: GestureDetector(
                            onLongPress: () => setState(() {
                              if (!isSelection) isSelection = true;
                              pickedMessages
                                  .add({key: currentMessages[i]['message']});
                            }),
                            onTap: () => setState(() {
                              if (pickedMessages
                                      .where((e) => e.keys.contains(key))
                                      .isNotEmpty &&
                                  isSelection) {
                                pickedMessages
                                    .removeWhere((e) => e.keys.contains(key));
                                if (pickedMessages.isEmpty) isSelection = false;
                              } else if (isSelection) {
                                pickedMessages
                                    .add({key: currentMessages[i]['message']});
                              }
                            }),
                            child: MessageWidget(
                              chat: widget.currentChat,
                              currentChatMessage: currentChatMessage,
                              isSelected: pickedMessages
                                  .where((e) => e.keys.contains(key))
                                  .isNotEmpty,
                              setSelection: (value) => setState(() {
                                if (value!) {
                                  pickedMessages.add(
                                      {key: currentMessages[i]['message']});
                                } else {
                                  pickedMessages
                                      .removeWhere((e) => e.keys.contains(key));
                                }
                              }),
                              isSelection: isSelection,
                              key: key,
                              sender: (currentMessages[i]['message'] as Message)
                                          .sender
                                          .id ==
                                      UserModel().signInAccount.uid
                                  ? null
                                  : widget.interlocutor,
                              messageConstraints: widget.constraints.copyWith(
                                  maxHeight: widget.constraints.maxHeight * 0.7,
                                  maxWidth:
                                      MediaQuery.of(context).size.width > 500
                                          ? widget.constraints.maxWidth * 0.3
                                          : widget.constraints.maxWidth * 0.8),
                              isCurrentUserMessage:
                                  (currentMessages[i]['message'] as Message)
                                          .sender
                                          .id ==
                                      UserModel().signInAccount.uid,
                              isPrivateChat: true,
                              isFirstMessage: i + 1 == currentMessages.length
                                  ? true
                                  : i == 0 &&
                                          ((currentMessages[i]['message']
                                                      as Message)
                                                  .sender
                                                  .id !=
                                              (currentMessages[i + 1]['message']
                                                      as Message)
                                                  .sender
                                                  .id)
                                      ? true
                                      : i == 0 &&
                                              ((currentMessages[i]['message']
                                                          as Message)
                                                      .sender
                                                      .id ==
                                                  (currentMessages[i + 1]
                                                              ['message']
                                                          as Message)
                                                      .sender
                                                      .id)
                                          ? false
                                          : ((currentMessages[i]['message']
                                                      as Message)
                                                  .sender
                                                  .id !=
                                              (currentMessages[i + 1]['message']
                                                      as Message)
                                                  .sender
                                                  .id),
                              message: currentMessages[i]['message'],
                            ),
                          ),
                        );
                      },
                      itemCount: currentMessages.length,
                    ),
                    if (isSelection)
                      SizedBox(
                        width: widget.constraints.maxWidth,
                        height: 45,
                        child: Neumorphic(
                            style: NeumorphicStyle(
                                color: mainAccent,
                                boxShape: NeumorphicBoxShape.rect()),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text("Messages picked: " +
                                          pickedMessages.length.toString()),
                                      SizedBox(width: 10),
                                      SizedBox.square(
                                        dimension: 25,
                                        child: NeumorphicFloatingActionButton(
                                            style: NeumorphicStyle(
                                                color: mainAccent,
                                                lightSource:
                                                    LightSource.topRight),
                                            onPressed: () => setState(() {
                                                  isSelection = false;
                                                  pickedMessages.clear();
                                                }),
                                            child: SizedBox.square(
                                                dimension: 15,
                                                child: Icon(Icons.close))),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox.square(
                                        dimension: 25,
                                        child: NeumorphicFloatingActionButton(
                                            style: NeumorphicStyle(
                                                color: mainAccent,
                                                lightSource:
                                                    LightSource.topLeft),
                                            mini: true,
                                            child: Icon(Icons.delete),
                                            onPressed: () {
                                              showDialog(
                                                context: context,
                                                builder: (ctx) => AlertDialog(
                                                  backgroundColor:
                                                      NeumorphicColors
                                                          .background,
                                                  content: Text(
                                                      "Are you sure you want to delete the selected messages?"),
                                                  actionsAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  actions: [
                                                    NeumorphicButton(
                                                      child: Text(
                                                          "Delete only for me"),
                                                      onPressed: () {
                                                        deleteMessages(
                                                            deleteType
                                                                .onlyForMe);
                                                      },
                                                    ),
                                                    if (pickedMessages
                                                        .where((element) => element
                                                            .values
                                                            .where((element) =>
                                                                element.sender
                                                                    .id !=
                                                                UserModel()
                                                                    .signInAccount
                                                                    .uid)
                                                            .isNotEmpty)
                                                        .isEmpty)
                                                      NeumorphicButton(
                                                        onPressed: () {
                                                          deleteMessages(
                                                              deleteType
                                                                  .forAll);
                                                        },
                                                        child: Text(
                                                            "Delete only for all"),
                                                      ),
                                                  ],
                                                ),
                                                useSafeArea: true,
                                              );
                                            }),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Neumorphic(
                                        style: NeumorphicStyle(
                                            depth: -5, color: mainAccent),
                                        child: Padding(
                                          padding: EdgeInsets.all(4),
                                          child: Row(
                                            children: [
                                              NeumorphicButton(
                                                onPressed: () {
                                                  setState(() {
                                                    isSelection = false;

                                                    context
                                                        .read<
                                                            MessageWorkerCubit>()
                                                        .addToAnswer(
                                                            pickedMessages
                                                                .map((e) => e
                                                                    .values
                                                                    .first)
                                                                .toList());
                                                    pickedMessages.clear();
                                                  });
                                                },
                                                style: NeumorphicStyle(
                                                    depth: 10,
                                                    color: mainAccent),
                                                child: NeumorphicText("Answer"),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              NeumorphicButton(
                                                onPressed: () => showDialog(
                                                  context: context,
                                                  builder: (ctx) =>
                                                      BlocProvider.value(
                                                          value: BlocProvider
                                                              .of<DialogsKeeperBloc>(
                                                                  context),
                                                          child: BlocProvider
                                                              .value(
                                                            value: BlocProvider
                                                                .of<ChatPickerCubit>(
                                                                    context),
                                                            child:
                                                                ForwardMessageToAnotherChatWidget(
                                                              forwardedMessages:
                                                                  pickedMessages
                                                                      .map((e) => e
                                                                          .values
                                                                          .first)
                                                                      .toList(),
                                                            ),
                                                          )),
                                                ),
                                                style: NeumorphicStyle(
                                                  depth: 10,
                                                  color: mainAccent,
                                                ),
                                                child:
                                                    NeumorphicText("Forward"),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )),
                      ),
                  ],
                ),
        ));
  }
}

class _DownChatPlank extends StatefulWidget {
  _DownChatPlank(
      {Key? key, required this.constraints, required this.isWIdeScreen})
      : super(key: key);
  BoxConstraints constraints;
  bool isWIdeScreen;
  @override
  State<_DownChatPlank> createState() => __DownChatPlankState();
}

class __DownChatPlankState extends State<_DownChatPlank> {
  late TextEditingController _controller;
  late List<PlatformFile> attachements;
  late List<Message> answeredMessages;
  late FocusNode _node;
  late StreamController _textStateStream;
  late bool isTextTyped;
  late Key sendKey;
  late Record voiceRecorder;
  late bool isRecording;
  late StreamSubscription<MessageWorkerState> _answersSubscriber;
  @override
  void initState() {
    answeredMessages = [];

    voiceRecorder = Record();
    _answersSubscriber =
        BlocProvider.of<MessageWorkerCubit>(context).stream.listen((event) {
      event.whenOrNull(
        answerMessagesAdded: (messages) {
          answeredMessages.clear();
          setState(() {
            answeredMessages.addAll(messages);
            setState(() {
              sendKey = ValueKey("send");
            });
          });
        },
      );
    });
    isRecording = false;
    sendKey = ValueKey("mic");
    isTextTyped = false;
    attachements = [];
    _textStateStream = StreamController();
    _controller = TextEditingController();
    _controller.addListener(() {
      _textStateStream.add(_controller.text.isNotEmpty);
    });
    _textStateStream.stream
        .distinct()
        .debounceTime(const Duration(milliseconds: 300))
        .listen((event) {
      setState(() {
        isTextTyped = event;

        sendKey = ValueKey(event ? "send" : "mic");
      });
    });
    _node = FocusNode();
    _node.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _answersSubscriber.cancel();
    voiceRecorder.dispose();
    _node.dispose();
    _controller.dispose();
    _textStateStream.close();
    super.dispose();
  }

  void fileIsBig(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: SnackBar(
      content: Neumorphic(
          style: NeumorphicStyle(
              depth: -3,
              boxShape:
                  NeumorphicBoxShape.roundRect(BorderRadius.circular(15))),
          child: Row(
            children: [
              NeumorphicIcon(
                Icons.close,
                style: NeumorphicStyle(color: Colors.red[400], depth: 3),
              ),
              SizedBox(
                width: 10,
              ),
              NeumorphicText(
                "Some files is so big! Max file size - 500 mb",
                style: NeumorphicStyle(depth: 3),
              )
            ],
          )),
    )));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Neumorphic(
          style: NeumorphicStyle(
              depth: _node.hasFocus ? 5 : 0, lightSource: LightSource.bottom),
          child: Padding(
            padding: widget.isWIdeScreen
                ? const EdgeInsets.only(left: 20, top: 12, bottom: 8, right: 20)
                : const EdgeInsets.all(0),
            child: Row(
              children: [
                Expanded(
                  child: Neumorphic(
                    style: NeumorphicStyle(
                        depth: _node.hasFocus ? 7 : 0,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(20))),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: TextField(
                              focusNode: _node,
                              controller: _controller,
                              decoration: InputDecoration(
                                hintText: "Enter a message",
                                icon: NeumorphicFloatingActionButton(
                                    mini: true,
                                    style: NeumorphicStyle(
                                        depth: _node.hasFocus ? null : 0),
                                    child: Icon(Icons.attach_file),
                                    onPressed:
                                        () => FilePickerLib.pickAttachements()
                                                .then((value) {
                                              if (value != null &&
                                                  value.files.isNotEmpty) {
                                                setState(() {
                                                  var files = value.files
                                                      .where((element) {
                                                    if (element.size >
                                                        536870912) {
                                                      return false;
                                                    } else {
                                                      return true;
                                                    }
                                                  });
                                                  if (files.length +
                                                          attachements.length >
                                                      15) {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .removeCurrentSnackBar();
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(SnackBar(
                                                            backgroundColor:
                                                                NeumorphicColors
                                                                    .background,
                                                            content: SizedBox(
                                                              height: kIsWeb
                                                                  ? MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      0.2
                                                                  : null,
                                                              child: Neumorphic(
                                                                child: Padding(
                                                                  padding: EdgeInsets.all(
                                                                      MediaQuery.of(context)
                                                                              .size
                                                                              .height *
                                                                          0.04),
                                                                  child:
                                                                      FittedBox(
                                                                    fit: BoxFit
                                                                        .fill,
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          NeumorphicIcon(
                                                                            Icons.report_problem,
                                                                            style:
                                                                                NeumorphicStyle(color: Colors.yellow[600], depth: 5),
                                                                          ),
                                                                          NeumorphicText(
                                                                            "You reached max size of files, please try again",
                                                                            style:
                                                                                NeumorphicStyle(
                                                                              color: mainAccent,
                                                                              depth: 5,
                                                                            ),
                                                                            textStyle:
                                                                                NeumorphicTextStyle(
                                                                              fontFamily: mainFontFamaly,
                                                                            ),
                                                                          )
                                                                        ]),
                                                                  ),
                                                                ),
                                                              ),
                                                            )));
                                                  } else {
                                                    attachements.addAll(files);
                                                  }
                                                });
                                              }
                                            })),
                                focusColor: mainAccent,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Row(children: [
                            NeumorphicFloatingActionButton(
                                mini: true,
                                style: NeumorphicStyle(
                                    depth: _node.hasFocus ? null : 0),
                                child: Icon(
                                  Icons.emoji_emotions,
                                  color: _node.hasFocus
                                      ? mainAccent
                                      : Colors.grey[400],
                                ),
                                onPressed: () {
                                  if (!_node.hasFocus) _node.requestFocus();
                                }),
                            const SizedBox(
                              width: 15,
                            ),
                            if (widget.isWIdeScreen &&
                                (sendKey == ValueKey("send") ||
                                    answeredMessages.isNotEmpty ||
                                    attachements.isNotEmpty))
                              NeumorphicFloatingActionButton(
                                  mini: true,
                                  style: NeumorphicStyle(
                                      depth: _node.hasFocus ? null : 0),
                                  child: Icon(
                                    Icons.photo,
                                    color: _node.hasFocus
                                        ? mainAccent
                                        : Colors.grey[400],
                                  ),
                                  onPressed: () {
                                    if (!_node.hasFocus) _node.requestFocus();
                                  }),
                            if (!widget.isWIdeScreen)
                              NeumorphicFloatingActionButton(
                                  onPressed: () {
                                    if (sendKey == ValueKey("send") ||
                                        answeredMessages.isNotEmpty ||
                                        attachements.isNotEmpty) {
                                      context.read<MessengerBloc>().add(
                                          MessengerEvent.sendMessage(
                                              _controller.text,
                                              attachements,
                                              answeredMessages.isEmpty
                                                  ? messageTypes.Default
                                                  : messageTypes.Forward,
                                              answeredMessages,
                                              UserModel().lastChat!));
                                      setState(() {
                                        _controller.clear();
                                      });
                                    } else {
                                      FilePickerLib.pickAttachements()
                                          .then((value) {
                                        if (value != null &&
                                            value.files.isNotEmpty) {
                                          setState(() {
                                            var files =
                                                value.files.where((element) {
                                              if (element.size > 536870912) {
                                                return false;
                                              } else {
                                                return true;
                                              }
                                            });
                                            if (files.length +
                                                    attachements.length >
                                                15) {
                                              ScaffoldMessenger.of(context)
                                                  .removeCurrentSnackBar();
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(SnackBar(
                                                      backgroundColor:
                                                          NeumorphicColors
                                                              .background,
                                                      content: SizedBox(
                                                        height: kIsWeb
                                                            ? MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.2
                                                            : null,
                                                        child: Neumorphic(
                                                          child: Padding(
                                                            padding: EdgeInsets
                                                                .all(MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    0.04),
                                                            child: FittedBox(
                                                              fit: BoxFit.fill,
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    NeumorphicIcon(
                                                                      Icons
                                                                          .report_problem,
                                                                      style: NeumorphicStyle(
                                                                          color: Colors.yellow[
                                                                              600],
                                                                          depth:
                                                                              5),
                                                                    ),
                                                                    NeumorphicText(
                                                                      "You reached max size of files, please try again",
                                                                      style:
                                                                          NeumorphicStyle(
                                                                        color:
                                                                            mainAccent,
                                                                        depth:
                                                                            5,
                                                                      ),
                                                                      textStyle:
                                                                          NeumorphicTextStyle(
                                                                        fontFamily:
                                                                            mainFontFamaly,
                                                                      ),
                                                                    )
                                                                  ]),
                                                            ),
                                                          ),
                                                        ),
                                                      )));
                                            } else {
                                              attachements.addAll(files);
                                            }
                                          });
                                        }
                                      });
                                    }
                                  },
                                  style: NeumorphicStyle(
                                      color: widget.isWIdeScreen
                                          ? accentColor
                                          : NeumorphicColors.background,
                                      depth: isTextTyped ||
                                              answeredMessages.isNotEmpty ||
                                              attachements.isNotEmpty
                                          ? 5
                                          : 0),
                                  child: AnimatedSwitcher(
                                      duration:
                                          const Duration(milliseconds: 500),
                                      transitionBuilder: (child, anim) =>
                                          RotationTransition(
                                            turns:
                                                sendKey == ValueKey("send") ||
                                                        answeredMessages
                                                            .isNotEmpty ||
                                                        attachements.isNotEmpty
                                                    ? Tween<double>(
                                                            begin: 1, end: 0.75)
                                                        .animate(anim)
                                                    : Tween<double>(
                                                            begin: 0.75, end: 1)
                                                        .animate(anim),
                                            child: ScaleTransition(
                                              scale: anim,
                                              child: child,
                                            ),
                                          ),
                                      child: isTextTyped ||
                                              answeredMessages.isNotEmpty ||
                                              attachements.isNotEmpty
                                          ? RotatedBox(
                                              quarterTurns: 5,
                                              child: Icon(
                                                Icons.send,
                                                color: widget.isWIdeScreen
                                                    ? Colors.black
                                                    : mainAccent,
                                                key: ValueKey("send"),
                                              ),
                                            )
                                          : Icon(
                                              Icons.photo,
                                              color: widget.isWIdeScreen
                                                  ? Colors.black
                                                  : Colors.grey[400],
                                              key: ValueKey("mic"),
                                            )))
                          ]),
                        )
                      ],
                    ),
                  ),
                ),
                if (widget.isWIdeScreen)
                  const SizedBox(
                    width: 30,
                  ),
                if (widget.isWIdeScreen)
                  NeumorphicFloatingActionButton(
                      onPressed: () {
                        if (sendKey == ValueKey("send") ||
                            answeredMessages.isNotEmpty ||
                            attachements.isNotEmpty) {
                          print(answeredMessages.toString());

                          context.read<MessengerBloc>().add(
                              MessengerEvent.sendMessage(
                                  _controller.text,
                                  attachements,
                                  answeredMessages.isEmpty
                                      ? messageTypes.Default
                                      : messageTypes.Forward,
                                  answeredMessages,
                                  UserModel().lastChat!));
                          setState(() {
                            _controller.clear();
                          });
                        } else {
                          voiceRecorder.start().then((value) => setState(() {
                                isRecording = true;
                                // voiceRecorder.getAmplitude().then((value) =>
                                //     Stream.periodic(Duration(seconds: 1))
                                //         .listen((ev) => print(value.current)));
                              }));
                        }
                      },
                      style: NeumorphicStyle(
                          color: widget.isWIdeScreen
                              ? accentColor
                              : NeumorphicColors.background,
                          depth: isTextTyped ||
                                  answeredMessages.isNotEmpty ||
                                  attachements.isNotEmpty
                              ? 5
                              : 0),
                      child: AnimatedSwitcher(
                          duration: const Duration(milliseconds: 500),
                          transitionBuilder: (child, anim) =>
                              RotationTransition(
                                turns: sendKey == ValueKey("send")
                                    ? Tween<double>(begin: 1, end: 0.75)
                                        .animate(anim)
                                    : Tween<double>(begin: 0.75, end: 1)
                                        .animate(anim),
                                child: ScaleTransition(
                                  scale: anim,
                                  child: child,
                                ),
                              ),
                          child: isTextTyped ||
                                  answeredMessages.isNotEmpty ||
                                  attachements.isNotEmpty
                              ? RotatedBox(
                                  quarterTurns: 5,
                                  child: Icon(
                                    Icons.send,
                                    color: widget.isWIdeScreen
                                        ? Colors.black
                                        : accentColor,
                                    key: ValueKey("send"),
                                  ),
                                )
                              : Icon(
                                  Icons.photo,
                                  color: widget.isWIdeScreen
                                      ? Colors.black
                                      : Colors.grey[400],
                                  key: ValueKey("mic"),
                                )))
              ],
            ),
          ),
        ),
        if (answeredMessages.isNotEmpty)
          Padding(
            padding: EdgeInsets.only(
                top: 5,
                right: widget.constraints.maxWidth * 0.135,
                left: widget.constraints.maxWidth * 0.065,
                bottom: 5),
            child: ForwardedMessagesWidget(
                messages: answeredMessages,
                closePanel: () => setState(() {
                      answeredMessages.clear();
                    })),
          ),
        if (attachements.isNotEmpty &&
            ((kIsWeb && widget.constraints.maxHeight > 400) || !kIsWeb))
          AttachmentsWidget(
              onPressed: (PlatformFile e) => setState(() {
                    attachements.remove(e);
                  }),
              files: attachements,
              constraints: widget.constraints)
      ],
    );
  }
}

class _UpperChatPlank extends StatelessWidget {
  const _UpperChatPlank(
      {Key? key,
      required this.pickedUser,
      required this.constraints,
      required this.isWideScreenLayout})
      : super(key: key);
  final bool isWideScreenLayout;
  final AnotherUser pickedUser;
  final BoxConstraints constraints;
  @override
  Widget build(BuildContext context) {
    bool isKeyboard = MediaQuery.of(context).viewInsets.bottom > 25;
    return Row(
      children: [
        if (!isWideScreenLayout)
          IconButton(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
        Flexible(
            flex: 4,
            child: Row(
              children: [
                SizedBox.square(
                  dimension: isWideScreenLayout
                      ? constraints.maxWidth > 500 && kIsWeb
                          ? 100
                          : constraints.maxWidth > 100 && kIsWeb
                              ? 50
                              : kIsWeb
                                  ? 10
                                  : constraints.maxWidth > 300 && isKeyboard
                                      ? 50
                                      : 70
                      : constraints.maxWidth * 0.13,
                  child: NeumorphicAvatar(
                    imagePath: pickedUser.photo,
                  ),
                ),
                Expanded(
                  child: ListTile(
                      title: Row(
                        children: [
                          SizedBox(
                            width: isWideScreenLayout ? null : 120,
                            child: Text(
                              pickedUser.name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  fontSize: isWideScreenLayout ? null : 15),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          isKeyboard
                              ? getSubtitleText(UserModel().status)
                              : Container()
                        ],
                      ),
                      subtitle: isKeyboard
                          ? null
                          : getSubtitleText(UserModel().status),
                      trailing: isWideScreenLayout ? null : null
                      // PopupMenuButton(
                      //     itemBuilder: (ctx) => PopupMenuEntry[]
                      //         PopupMenuItem(child: Text("Abobka")),
                      //   ),
                      ),
                )
              ],
            )),
        // Neumorphic(
        //   style: NeumorphicStyle(
        //       depth: isWideScreenLayout ? -10 : 0,
        //       boxShape:
        //           NeumorphicBoxShape.roundRect(BorderRadius.circular(15))),
        //   child: Padding(
        //     padding: isWideScreenLayout
        //         ? EdgeInsets.all(12)
        //         : EdgeInsets.only(right: 12),
        //     child: SizedBox(
        //       width: isWideScreenLayout
        //           ? constraints.maxWidth * 0.15
        //           : constraints.maxWidth * 0.20,
        //       height: isKeyboard ? 25 : null,
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           SizedBox(
        //             width: isWideScreenLayout
        //                 ? constraints.maxWidth * 0.04
        //                 : constraints.maxWidth * 0.08,
        //             child: NeumorphicFloatingActionButton(
        //                 style: NeumorphicStyle(
        //                     depth: isWideScreenLayout ? null : 0),
        //                 mini: true,
        //                 child: Icon(Icons.call),
        //                 onPressed: () => null),
        //           ),
        //           SizedBox(
        //             width: isWideScreenLayout
        //                 ? constraints.maxWidth * 0.04
        //                 : constraints.maxWidth * 0.08,
        //             child: NeumorphicFloatingActionButton(
        //                 style: NeumorphicStyle(
        //                     depth: isWideScreenLayout ? null : 0),
        //                 mini: true,
        //                 child: Icon(Icons.video_call),
        //                 onPressed: () => null),
        //           ),
        //           if (isWideScreenLayout)
        //             SizedBox(
        //               width: constraints.maxWidth * 0.04,
        //               child: NeumorphicFloatingActionButton(
        //                   mini: true,
        //                   child: Icon(Icons.menu),
        //                   onPressed: () => null),
        //             ),
        //         ],
        //       ),
        //     ),
        //   ),
        // )
      ],
    );
  }
}
