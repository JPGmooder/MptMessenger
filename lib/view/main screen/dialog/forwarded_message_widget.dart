import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:intl/intl.dart';
import 'package:mptmessenger/asset/colors.dart';
import 'package:mptmessenger/asset/strings.dart';
import 'package:mptmessenger/logic/firestore/firestore.dart';
import 'package:mptmessenger/model/another_user.dart';
import 'package:mptmessenger/model/chat_model.dart';
import 'package:mptmessenger/model/user_model.dart';
import 'package:mptmessenger/view/main%20screen/dialog/message_widget.dart';
import 'package:mptmessenger/view/standalone/default_neumorhicavatar_widget.dart';

class ForwardedMessagesWidget extends StatelessWidget {
  const ForwardedMessagesWidget(
      {Key? key, required this.messages, required this.closePanel})
      : super(key: key);
  final List<Message> messages;
  final void Function() closePanel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 2,
              height: 40,
              child: ColoredBox(color: mainAccent),
            ),
            SizedBox(
              width: 6,
            ),
            GestureDetector(
              onTap: () => showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  actions: [
                    NeumorphicButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text(
                        "Close",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    )
                  ],
                  title: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text("Forwarded messages"),
                          NeumorphicFloatingActionButton(
                              mini: MediaQuery.of(context).size.width < 400,
                              onPressed: () => Navigator.of(context).pop(),
                              child: Icon(Icons.close))
                        ],
                      ),
                      Divider(
                        thickness: 3,
                      )
                    ],
                  ),
                  backgroundColor: NeumorphicColors.background,
                  content: ForwardedBodyWidget(
                      isMessageInChat: false,
                      forwardedMessages: messages,
                      constraints: BoxConstraints(
                          maxHeight: MediaQuery.of(context).size.height * 0.8,
                          maxWidth: MediaQuery.of(context).size.width * 0.5)),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    messages.length > 1
                        ? mulForwardedMessagesText
                        : oneForwardedMessagesText,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(messages.length.toString() +
                      " " +
                      (messages.length > 1
                          ? mulForwardedMessagesCountText
                          : oneForwardedMessagesCountText)),
                ],
              ),
            ),
          ],
        ),
        NeumorphicFloatingActionButton(
          mini: true,
          child: const Icon(Icons.close),
          style: NeumorphicStyle(
            color: NeumorphicColors.background,
          ),
          onPressed: closePanel,
        ),
      ],
    );
  }
}

class ForwardedBodyWidget extends StatefulWidget {
  ForwardedBodyWidget(
      {Key? key,
      required this.constraints,
      this.chat,
      this.isNested = false,
      required this.isMessageInChat,
      required this.forwardedMessages})
      : super(key: key);
  final BoxConstraints constraints;
  final List<Message> forwardedMessages;
  final bool isMessageInChat;
  ChatModel? chat;
  bool isNested;
  @override
  State<ForwardedBodyWidget> createState() => _ForwardedBodyWidgetState();
}

class _ForwardedBodyWidgetState extends State<ForwardedBodyWidget> {
  late Completer<List<Map<String, dynamic>>> messageCompleter;

  @override
  void initState() {
    messageCompleter = Completer<List<Map<String, dynamic>>>();
    List<Map<String, dynamic>> completersMap = [];
    for (var message in widget.forwardedMessages) {
      Firestore.getRawUser(reference: message.sender)
          .then((value) => completersMap.add({
                "Message": message,
                "Sender": AnotherUser.fromMap(
                    value.data() as Map<String, dynamic>, value.id)
              }))
          .then((value) {
        if (completersMap.length == widget.forwardedMessages.length) {
          messageCompleter.complete(completersMap);
          log(completersMap.toString());
        }
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double actualSize = widget.forwardedMessages
            .where((element) =>
                element.forwardedMessages != null &&
                element.forwardedMessages!.isNotEmpty)
            .isNotEmpty
        ? widget.constraints.maxHeight
        : widget.forwardedMessages.length * 50;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: widget.isMessageInChat
              ? widget.constraints.maxWidth < 400
                  ? widget.constraints.maxWidth
                  : widget.constraints.maxWidth * 0.8
              : widget.constraints.maxWidth,
          height: widget.isMessageInChat
              ? widget.constraints.maxHeight * 0.35
              : actualSize > widget.constraints.maxHeight * 0.75
                  ? widget.constraints.maxHeight * 0.75
                  : actualSize,
          child: FutureBuilder<List<Map<String, dynamic>>>(
            future: messageCompleter.future,
            builder: (ctx, snap) => snap.data == null
                ? CircularProgressIndicator.adaptive()
                : ListView(
                    shrinkWrap: true,
                    physics:
                        widget.isNested ? NeverScrollableScrollPhysics() : null,
                    children: snap.data!.map((e) {
                      var currentMessage = (e['Message'] as Message);
                      var currentUser = (e['Sender'] as AnotherUser);
                      bool isHiddenForCurrentUser = currentMessage.hidden!
                          .contains(Firestore.fireStoreInstance
                              .collection(usersDocumentPath)
                              .doc(UserModel().signInAccount.uid));
                      bool newMessageStyle = snap.data!.indexOf(e) == 0 ||
                          (snap.data!.elementAt(snap.data!.indexOf(e) - 1)[
                                      'Sender'] as AnotherUser)
                                  .uID !=
                              currentUser.uID ||
                          (snap.data!.elementAt(snap.data!.indexOf(e) - 1)[
                                      'Message'] as Message)
                                  .sendTime
                                  .difference(currentMessage.sendTime)
                                  .inMinutes
                                  .abs() >
                              1;
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment:
                                currentMessage.attachments != null &&
                                        currentMessage.attachments!.isNotEmpty
                                    ? CrossAxisAlignment.end
                                    : CrossAxisAlignment.start,
                            children: [
                              newMessageStyle && !isHiddenForCurrentUser
                                  ? NeumorphicAvatar(
                                      width: widget.constraints.maxWidth *
                                                  0.25 <
                                              20
                                          ? widget.constraints.maxWidth * 0.08
                                          : widget.constraints.maxWidth * 0.25 >
                                                  50
                                              ? 50
                                              : widget.constraints.maxWidth *
                                                  0.25,
                                      height: widget.constraints.maxWidth *
                                                  0.25 <
                                              20
                                          ? widget.constraints.maxWidth * 0.08
                                          : widget.constraints.maxWidth * 0.25 >
                                                  50
                                              ? 50
                                              : widget.constraints.maxWidth *
                                                  0.25,
                                      imagePath: currentUser.photo)
                                  : SizedBox(
                                      width: widget.constraints.maxWidth *
                                                  0.25 <
                                              20
                                          ? widget.constraints.maxWidth * 0.08
                                          : widget.constraints.maxWidth * 0.25 >
                                                  50
                                              ? 50
                                              : widget.constraints.maxWidth *
                                                  0.25,
                                    ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (newMessageStyle &&
                                      currentMessage.text != null)
                                    const SizedBox(
                                      height: 5,
                                    ),
                                  if (newMessageStyle)
                                    SizedBox(
                                      width: widget.constraints.maxWidth * 0.6,
                                      child: isHiddenForCurrentUser
                                          ? const Text(
                                              "Message deleted",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontStyle: FontStyle.italic),
                                            )
                                          : Text(
                                              currentUser.name +
                                                  " " +
                                                  DateFormat(DateTime.now()
                                                                      .day -
                                                                  currentMessage
                                                                      .sendTime
                                                                      .day
                                                                      .abs() ==
                                                              0
                                                          ? "HH:mm"
                                                          : DateTime.now().day -
                                                                      currentMessage
                                                                          .sendTime
                                                                          .day
                                                                          .abs() <=
                                                                  7
                                                              ? "EEEEEEEEE, HH:mm"
                                                              : "dd.MM.yy, HH:mm")
                                                      .format(currentMessage
                                                          .sendTime),
                                              style: TextStyle(
                                                  fontSize: widget.constraints
                                                                  .maxWidth *
                                                              0.05 <
                                                          8
                                                      ? widget.constraints
                                                              .maxWidth *
                                                          0.08
                                                      : widget.constraints
                                                                      .maxWidth *
                                                                  0.05 >
                                                              15
                                                          ? 14
                                                          : widget.constraints
                                                                  .maxWidth *
                                                              0.05,
                                                  fontWeight: FontWeight.bold,
                                                  color: (e["Sender"]
                                                                  as AnotherUser)
                                                              .uID ==
                                                          UserModel()
                                                              .signInAccount
                                                              .uid
                                                      ? mainAccent
                                                      : Colors.black),
                                            ),
                                    ),
                                  if (currentMessage.attachments != null &&
                                      currentMessage.attachments!.isNotEmpty)
                                    SizedBox(
                                      width: widget.isMessageInChat
                                          ? widget.constraints.maxWidth * 0.5
                                          : 200,
                                      child: ImagesInChatWidget(
                                        chat: widget.chat,
                                        message: currentMessage,
                                        constraints: widget.constraints
                                            .copyWith(
                                                maxHeight: widget
                                                        .constraints.maxHeight /
                                                    2,
                                                maxWidth: widget
                                                        .constraints.maxWidth /
                                                    2),
                                        images: currentMessage.attachments!
                                            .where((element) =>
                                                RegExp(imageRegex)
                                                    .hasMatch(element!['name']))
                                            .toList(),
                                      ),
                                    ),
                                  if (newMessageStyle &&
                                      currentMessage.text != null &&
                                      (currentMessage.attachments == null ||
                                          currentMessage.attachments!.isEmpty))
                                    const SizedBox(
                                      height: 5,
                                    ),
                                  if (currentMessage.text != null)
                                    SizedBox(
                                      width: widget.constraints.maxWidth * 0.6,
                                      child: Text(
                                        currentMessage.text!,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: widget.constraints
                                                            .maxWidth *
                                                        0.05 <
                                                    8
                                                ? widget.constraints.maxWidth *
                                                    0.08
                                                : widget.constraints.maxWidth *
                                                            0.05 >
                                                        15
                                                    ? 14
                                                    : widget.constraints
                                                            .maxWidth *
                                                        0.05),
                                      ),
                                    ),
                                  if (!newMessageStyle)
                                    const SizedBox(
                                      height: 5,
                                    ),
                                ],
                              ),
                            ],
                          ),
                          if (currentMessage.forwardedMessages != null &&
                              currentMessage.forwardedMessages!.isNotEmpty)
                            MediaQuery.of(context).size.width -
                                        widget.constraints.maxWidth >
                                    MediaQuery.of(context).size.width / 1.25
                                ? Text("ABOBA")
                                : Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 2,
                                        height:
                                            widget.constraints.maxHeight * 0.1,
                                        child: ColoredBox(
                                          color: mainAccent.withOpacity(0.7),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      ForwardedBodyWidget(
                                          chat: widget.chat,
                                          isNested: true,
                                          constraints: widget.isMessageInChat
                                              ? widget.constraints.copyWith(
                                                  maxWidth: widget.constraints
                                                          .maxWidth -
                                                      64,
                                                  maxHeight: widget.constraints
                                                          .maxHeight -
                                                      50)
                                              : widget.constraints,
                                          isMessageInChat: true,
                                          forwardedMessages: currentMessage
                                              .forwardedMessages!),
                                    ],
                                  )
                        ],
                      );
                    }).toList(),
                  ),
          ),
        ),
      ],
    );
  }
}
