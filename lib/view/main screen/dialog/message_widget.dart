import 'dart:async';
import 'dart:developer';
import 'dart:typed_data';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:mptmessenger/asset/colors.dart';
import 'package:mptmessenger/asset/strings.dart';
import 'package:mptmessenger/logic/firestorage/firestorge.dart';
import 'package:mptmessenger/logic/firestore/firestore.dart';
import 'package:mptmessenger/logic/messenger/messenger_bloc.dart';
import 'package:mptmessenger/logic/pickers/pickers.dart';
import 'package:mptmessenger/model/another_user.dart';
import 'package:mptmessenger/model/chat_model.dart';
import 'package:mptmessenger/model/user_model.dart';
import 'package:mptmessenger/view/main%20screen/dialog/forwarded_message_widget.dart';
import 'package:mptmessenger/view/main%20screen/dialog/image_viewer.dart';
import 'package:mptmessenger/view/standalone/default_neumorhicavatar_widget.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rive/rive.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget(
      {Key? key,
      required this.isSelection,
      required this.setSelection,
      required this.isCurrentUserMessage,
      required this.isFirstMessage,
      required this.isPrivateChat,
      required this.isSelected,
      required this.messageConstraints,
      required this.sender,
      required this.currentChatMessage,
      required this.chat,
      required this.message})
      : super(key: key);
  final DocumentReference currentChatMessage;
  final ChatModel chat;
  final void Function(bool?) setSelection;
  final bool isCurrentUserMessage, isPrivateChat, isFirstMessage, isSelection;
  final BoxConstraints messageConstraints;
  final Message message;
  final AnotherUser? sender;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Align(
      child: SizedBox(
        width: messageConstraints.maxWidth,
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: isCurrentUserMessage
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            children: [
              if (!isCurrentUserMessage || isSelection)
                Align(
                  alignment: Alignment.bottomLeft,
                  child: isFirstMessage && !isSelection
                      ? NeumorphicAvatar(
                          imagePath: sender?.photo ?? UserModel().photo,
                          width: messageConstraints.maxWidth * 0.15 < 50
                              ? 50
                              : messageConstraints.maxWidth * 0.12,
                          height: messageConstraints.maxWidth * 0.15 < 50
                              ? 50
                              : messageConstraints.maxWidth * 0.12,
                        )
                      : isSelection && !isCurrentUserMessage
                          ? Checkbox(value: isSelected, onChanged: setSelection)
                          : SizedBox(
                              width: messageConstraints.maxWidth * 0.15,
                              height: messageConstraints.maxWidth * 0.15,
                            ),
                ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                        maxWidth: messageConstraints.maxWidth * 0.85,
                        maxHeight: messageConstraints.maxHeight * 0.90),
                    child: Neumorphic(
                      style: NeumorphicStyle(
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.all(Radius.circular(15)).copyWith(
                                  bottomRight: isCurrentUserMessage
                                      ? !isFirstMessage
                                          ? Radius.circular(15)
                                          : Radius.zero
                                      : Radius.circular(15),
                                  bottomLeft: isCurrentUserMessage
                                      ? Radius.circular(15)
                                      : !isFirstMessage
                                          ? Radius.circular(15)
                                          : Radius.zero)),
                          color: mainAccent.withOpacity(isSelected ? 0.4 : 1),
                          depth: isSelected
                              ? 0
                              : isCurrentUserMessage
                                  ? -3
                                  : 3),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          if (message.forwardedMessages != null &&
                              message.forwardedMessages!.isNotEmpty)
                            ConstrainedBox(
                              constraints: messageConstraints.copyWith(
                                  maxHeight:
                                      messageConstraints.maxHeight * 0.6),
                              child: Neumorphic(
                                style: NeumorphicStyle(
                                    color: NeumorphicColors.background,
                                    depth: -5),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, top: 8.0),
                                  child: ForwardedBodyWidget(
                                      chat: chat,
                                      isMessageInChat: true,
                                      constraints: messageConstraints,
                                      forwardedMessages:
                                          message.forwardedMessages!),
                                ),
                              ),
                            ),
                          Padding(
                            child: MessageBody(
                              message: message,
                              chat: chat,
                              currentChatMessage: currentChatMessage,
                              constraints: messageConstraints.copyWith(
                                  maxWidth: messageConstraints.maxWidth,
                                  maxHeight:
                                      messageConstraints.maxHeight * 0.90),
                            ),
                            padding: EdgeInsets.only(bottom: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: isFirstMessage
                        ? messageConstraints.maxHeight * 0.05
                        : messageConstraints.maxHeight * 0.02,
                  )
                ],
              ),
              if (isCurrentUserMessage || isSelection)
                Align(
                    alignment: isSelection
                        ? Alignment.topCenter
                        : Alignment.bottomRight,
                    child: isSelection && isCurrentUserMessage
                        ? Checkbox(value: isSelected, onChanged: setSelection)
                        : Container())
            ]),
      ),
      alignment:
          isCurrentUserMessage ? Alignment.centerRight : Alignment.centerLeft,
    );
  }
}

class MessageBody extends StatefulWidget {
  const MessageBody(
      {Key? key,
      required this.message,
      required this.chat,
      required this.currentChatMessage,
      required this.constraints})
      : super(key: key);
  final DocumentReference currentChatMessage;
  final ChatModel chat;

  final Message message;
  final BoxConstraints constraints;
  @override
  State<MessageBody> createState() => _MessageBodyState();
}

class _MessageBodyState extends State<MessageBody> {
  @override
  void initState() {
    Firestore.readMessages(widget.message, widget.currentChatMessage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MessengerBloc, MessengerState>(
        listener: (context, state) => null,
        builder: (context, state) => state.maybeWhen(
            orElse: () => _ChatMessageBody(
                  chat: widget.chat,
                  isChecked: widget.message.readedBy == null
                      ? false
                      : widget.message.readedBy!
                          .cast<AnotherUser>()
                          .where((element) =>
                              element.uID != widget.message.sender.id)
                          .isNotEmpty,
                  constraints: widget.constraints,
                  isLoading: false,
                  message: widget.message,
                ),
            messageLoading: (message) => _ChatMessageBody(
                  chat: widget.chat,
                  isChecked: widget.message.readedBy == null
                      ? false
                      : widget.message.readedBy!
                          .cast<AnotherUser>()
                          .where((element) =>
                              element.uID != widget.message.sender.id)
                          .isNotEmpty,
                  constraints: widget.constraints,
                  isLoading: true,
                  checkLoadingMessage: message,
                  message: widget.message,
                )));
  }
}

class _ChatMessageBody extends StatelessWidget {
  _ChatMessageBody(
      {Key? key,
      required this.isLoading,
      required this.message,
      required this.isChecked,
      required this.constraints,
      required this.chat,
      this.checkLoadingMessage})
      : super(key: key);
  Message message;
  bool isLoading;
  bool isChecked;
  Message? checkLoadingMessage;
  BoxConstraints constraints;
  final ChatModel chat;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (message.attachments!
            .where((element) =>
                RegExp(imageRegex).hasMatch(element?['name'] as String))
            .toList()
            .isNotEmpty)
          ImagesInChatWidget(
            message: message,
            chat: chat,
            constraints: constraints,
            images: message.attachments!
                .where((element) =>
                    RegExp(imageRegex).hasMatch(element?['name'] as String))
                .toList(),
          ),
        if (message.text != null)
          Padding(
            padding: EdgeInsets.all(5.0),
            child: NeumorphicText(
              message.text!,
              textStyle: NeumorphicTextStyle(fontFamily: mainFontFamaly),
            ),
          ),
        if (message.attachments!
            .where((element) =>
                !RegExp(imageRegex).hasMatch(element?['name'] as String))
            .toList()
            .isNotEmpty)
          FilesInChatWidget(
            messageConstraints: constraints,
            files: message.attachments!
                .where((element) =>
                    !RegExp(imageRegex).hasMatch(element?['name'] as String))
                .cast<Map<String, dynamic>>()
                .toList(),
          ),
        Padding(
          padding: const EdgeInsets.only(bottom: 5, right: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "${message.sendTime.hour < 10 ? 0.toString() + message.sendTime.hour.toString() : message.sendTime.hour}:${message.sendTime.minute < 10 ? 0.toString() + message.sendTime.minute.toString() : message.sendTime.minute}",
                style: TextStyle(fontSize: 12, height: 0.1, color: accentColor),
              ),
              SizedBox.square(
                child: isLoading &&
                        checkLoadingMessage ==
                            message //TODO: тут может быть сравнение по ссылкам, если дальше не будет работать - исправить
                    ? const CircularProgressIndicator.adaptive()
                    : Icon(
                        isChecked ? Icons.done_all : Icons.done,
                        color: accentColor,
                      ),
                dimension: 10,
              )
            ],
          ),
        )
      ],
    );
  }
}

class FilesInChatWidget extends StatelessWidget {
  const FilesInChatWidget(
      {Key? key, required this.files, required this.messageConstraints})
      : super(key: key);
  final List<Map<String, dynamic>> files;
  final BoxConstraints messageConstraints;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: messageConstraints.maxWidth,
      child: Stack(children: [
        SizedBox(
          width: messageConstraints.maxWidth,
          child: Neumorphic(
            style: NeumorphicStyle(
              depth: -5,
              boxShape: NeumorphicBoxShape.rect(),
              color: mainAccent.withOpacity(0.5),
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  ...files
                      .map((e) => _FileInMessageWidget(
                            dimensionSize: messageConstraints.maxWidth * 0.15,
                            name: e['name'],
                            url: e['data'],
                          ))
                      .toList()
                ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Align(
            alignment: Alignment.topRight,
            child: Neumorphic(
              child: const Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  "Attachments",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              style: NeumorphicStyle(
                  lightSource: LightSource.bottom,
                  depth: 1,
                  color: accentColor,
                  boxShape:
                      NeumorphicBoxShape.roundRect(const BorderRadius.only(
                    topLeft: Radius.zero,
                    topRight: Radius.zero,
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ))),
            ),
          ),
        )
      ]),
    );
  }
}

class _FileInMessageWidget extends StatefulWidget {
  const _FileInMessageWidget(
      {Key? key,
      required this.name,
      required this.url,
      required this.dimensionSize})
      : super(key: key);
  final String name;
  final String url;
  final double dimensionSize;
  @override
  State<_FileInMessageWidget> createState() => _FileInMessageWidgetState();
}

class _FileInMessageWidgetState extends State<_FileInMessageWidget> {
  RiveAnimationController? _controller;
  late SMIBool isHovered;
  late SMITrigger isClicked;
  late SMINumber downloadProgress;
  late StreamSubscription<MessengerState> streamSub;
  String? filePath;
  String? fileWeight;
  bool? isFileExists;
  @override
  void initState() {
    FirebaseStorage.instance
        .refFromURL(widget.url)
        .getMetadata()
        .then((value) => fileWeight = (value.size! / 1000) < 1
            ? value.size!.toStringAsFixed(0) + " byte"
            : (value.size! / (1000 * 1000)) < 1
                ? (value.size! / 1000).toStringAsFixed(0) + " Kbyte"
                : (value.size! / (1000 * 1000)).toStringAsFixed(0) + " Mbyte");

    streamSub = BlocProvider.of<MessengerBloc>(context).stream.listen(
      (event) {
        event.maybeWhen(
            orElse: () => null,
            attachmentDownloaded: (url, data) {
              Future.delayed(Duration(seconds: 1)).then((value) {
                if (url == widget.url) {
                  setState(() {
                    filePath = url;
                    isFileExists = true;
                  });
                }
              });
            },
            attachmentLoading: (percent, _, url) {
              log(percent.toString());
              if (widget.url == url)
                setState(() {
                  downloadProgress.value = percent;
                });
            });
      },
    );
    FilePickerLib.isFileExists(widget.name).then((value) => setState(() {
          isFileExists = value != null;
          filePath = value;
        }));
    rootBundle.load(downloadFilePath).then((value) {
      final file = RiveFile.import(value);
      final artboard = file.mainArtboard;
      var controller = artboard.stateMachineByName("State Machine 1");
      if (controller != null) {
        setState(() {
          _controller = controller;
        });
        artboard.addController(controller);
        isClicked = controller.findSMI("Pressed");
        isHovered = controller.findSMI("Hover");
        downloadProgress = controller.findSMI("Loading");
        downloadProgress.value = -1;
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    streamSub.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    log(isFileExists.toString());
    log(_controller.toString());
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox.square(
            dimension: widget.dimensionSize,
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: _controller == null || isFileExists == null
                  ? const CircularProgressIndicator.adaptive()
                  : isFileExists!
                      ? LocalFileInMessage(
                          extension: widget.name.split(".").last,
                          path: filePath!,
                        )
                      : InkWell(
                          onHover: (value) => setState(() {
                            isHovered.value = value;
                          }),
                          onLongPress: () => setState(() {
                            isHovered.value = true;
                          }),
                          onTapCancel: () => setState(() {
                            isHovered.value = false;
                          }),
                          onTap: () {
                            log(isClicked.value.toString());
                            if (downloadProgress.value == -1) {
                              setState(() {
                                isHovered.value = true;

                                Future.delayed(Duration(seconds: 1))
                                    .then((value) {
                                  isClicked.fire();
                                });
                                context.read<MessengerBloc>().add(
                                    MessengerEvent.downloadAttachment(
                                        widget.url, widget.name));
                              });
                            }
                          },
                          child: RiveAnimation.asset(
                            downloadFilePath,
                            controllers: [_controller!],
                            placeHolder:
                                const CircularProgressIndicator.adaptive(),
                            fit: BoxFit.contain,
                          ),
                        ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: widget.dimensionSize * 4,
                child: Text(
                  widget.name,
                ),
              ),
              fileWeight == null
                  ? CircularProgressIndicator.adaptive()
                  : Text(fileWeight!)
            ],
          )
        ],
      ),
    );
  }
}

class LocalFileInMessage extends StatelessWidget {
  LocalFileInMessage({Key? key, required this.extension, required this.path})
      : super(key: key);
  String extension;
  final String path;

  @override
  Widget build(BuildContext context) {
    extension = extension.endsWith("x")
        ? extension.replaceRange(extension.length, null, "")
        : extension;
    return InkWell(
        child: supportedExtensions.contains(extension)
            ? Image.asset(imagesPath + extension + ".png")
            : const Icon(Icons.file_open_outlined),
        onTap: () => OpenFile.open(path));
  }
}

class ImagesInChatWidget extends StatelessWidget {
  const ImagesInChatWidget(
      {Key? key,
      required this.images,
      required this.constraints,
      required this.chat,
      required this.message})
      : super(key: key);
  final Message message;
  final List<Map<String, dynamic>?> images;
  final BoxConstraints constraints;
  final ChatModel? chat;

  @override
  Widget build(BuildContext context) {
    var rowsCounter =
        (images.length % 3 > 0 ? images.length / 3 + 1 : images.length / 3);
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: List.generate(rowsCounter.toInt(), (index) {
          var range = images.length >= 3 ? 3 : images.length;
          var currentImages = images.getRange(0, range).toList();
          images.removeRange(0, range);
          return SizedBox(
            width: constraints.maxWidth,
            height: constraints.maxHeight / rowsCounter * 0.5,
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: currentImages
                    .map((e) => Expanded(
                          flex: 1,
                          child: ImageInDialogWidget(
                            chat: chat,
                            message: message,
                            image: e!,
                          ),
                        ))
                    .toList()),
          );
        }).reversed.toList());
  }
}

class ImageInDialogWidget extends StatelessWidget {
  const ImageInDialogWidget(
      {Key? key,
      required this.image,
      required this.message,
      required this.chat})
      : super(key: key);

  final Map<String, dynamic> image;
  final Message message;
  final ChatModel? chat;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(PageRouteBuilder(
          opaque: false,
          barrierColor: Colors.transparent,
          barrierDismissible: true,
          pageBuilder: (BuildContext context, _, __) {
            return chat != null
                ? ImageViewer(
                    picName: image['name'],
                    chat: chat!,
                    imageUrl: image['data'],
                    message: message,
                  )
                : CachedNetworkImage(imageUrl: image['data']);
          })),
      child: Hero(
        tag: chat == null ? UniqueKey() : image['data'],
        child: CachedNetworkImage(
          placeholderFadeInDuration: Duration(seconds: 1),
          fit: BoxFit.fill,
          imageUrl: image['data'],
        ),
      ),
    );
  }
}
