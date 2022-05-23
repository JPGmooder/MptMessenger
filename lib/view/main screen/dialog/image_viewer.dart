import 'dart:developer';
import 'dart:typed_data';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';
import 'package:intl/intl.dart';
import 'package:mptmessenger/logic/firestorage/firestorge.dart';
import 'package:mptmessenger/logic/firestore/firestore.dart';
import 'package:mptmessenger/model/another_user.dart';
import 'package:mptmessenger/model/chat_model.dart';
import 'package:mptmessenger/model/user_model.dart';

class ImageViewer extends StatefulWidget {
  const ImageViewer(
      {Key? key,
      required this.picName,
      this.localPic,
      this.imageUrl,
      this.message,
      this.chat})
      : super(key: key);

  final String? imageUrl;
  final Message? message;
  final ChatModel? chat;
  final Uint8List? localPic;
  final String picName;
  @override
  State<ImageViewer> createState() => _ImageViewerState();
}

class _ImageViewerState extends State<ImageViewer> {
  AnotherUser? usersImage;
  late bool isInerracting;
  late int turns;
  late ScrollController scrollController;
  late Color _portairTransperentColor;
  late bool _portairVisibility;
  @override
  void initState() {
    _portairVisibility = true;
    scrollController = ScrollController();
    _portairTransperentColor = Colors.black;
    turns = 0;
    isInerracting = false;
    if (widget.localPic == null) {
      Firestore.getRawUser(reference: widget.message!.sender)
          .then((value) => setState(() {
                usersImage = AnotherUser.fromMap(
                    value.data() as Map<String, dynamic>, value.id);
              }));
    }
    scrollController.addListener(() {
      setState(() {
        double pixels = 1 - scrollController.position.pixels.abs() / 100;
        _portairTransperentColor =
            _portairTransperentColor.withOpacity(pixels < 0 ? 0 : pixels);
        if (scrollController.position.pixels.abs() >= 100 &&
            !(scrollController.position.userScrollDirection ==
                ScrollDirection.idle)) {
          scrollController.dispose();
          Navigator.of(context).pop();
        } else if ((scrollController.position.userScrollDirection ==
                    ScrollDirection.forward ||
                scrollController.position.userScrollDirection ==
                    ScrollDirection.reverse) &&
            _portairVisibility) {
          setState(() {
            _portairVisibility = false;
          });
        }
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: !kIsWeb &&
                (MediaQuery.of(context).size.height > 500 &&
                    MediaQuery.of(context).size.width < 500)
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    _portairVisibility = !_portairVisibility;
                  });
                },
                child: Stack(fit: StackFit.expand, children: [
                  ColoredBox(color: _portairTransperentColor),
                  SafeArea(
                    child: AnimatedOpacity(
                        duration: Duration(milliseconds: 200),
                        opacity: _portairVisibility ? 1 : 0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () =>
                                        Navigator.of(context).pop(),
                                    icon: const Icon(
                                      Icons.arrow_back,
                                      color: Colors.white,
                                    )),
                                Expanded(
                                  child: Text(
                                    widget.picName,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 19),
                                  ),
                                ),
                                Row(
                                  children: List.generate(
                                      2,
                                      (index) => IconButton(
                                            onPressed: () => null,
                                            icon: Icon(
                                                index == 0
                                                    ? Icons
                                                        .forward_to_inbox_rounded
                                                    : Icons.download,
                                                color: Colors.white),
                                          )),
                                )
                              ],
                            ),
                            if (widget.localPic == null)
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      if (widget.message!.text != null)
                                        Text(
                                          widget.message!.text!,
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        usersImage!.name,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Text(
                                        DateFormat("EEEEEEE, dd.MM.y").format(
                                                widget.message!.sendTime) +
                                            " at " +
                                            DateFormat("HH:mm").format(
                                                widget.message!.sendTime),
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  IconButton(
                                      onPressed: () => null,
                                      icon: Icon(
                                        Icons.share,
                                        color: Colors.white,
                                      ))
                                ],
                              )
                          ],
                        )),
                  ),
                  ListView(
                    controller: scrollController,
                    physics: const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    children: [
                      SizedBox.fromSize(
                        size: MediaQuery.of(context).size,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(child: Container()),
                            ConstrainedBox(
                              constraints: BoxConstraints(
                                  maxWidth: MediaQuery.of(context).size.width,
                                  maxHeight:
                                      MediaQuery.of(context).size.height),
                              child: Hero(
                                tag: widget.localPic != null
                                    ? widget.localPic.toString()
                                    : widget.imageUrl!,
                                child: widget.localPic != null
                                    ? Image.memory(widget.localPic!)
                                    : CachedNetworkImage(
                                        imageUrl: widget.imageUrl!,
                                        filterQuality: FilterQuality.high,
                                        fit: BoxFit.fill,
                                      ),
                              ),
                            ),
                            Expanded(child: Container()),
                          ],
                        ),
                      )
                    ],
                  ),
                ]),
              )
            : MouseRegion(
                onEnter: (event) => log(event.toString()),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    GestureDetector(
                      onTap: () =>
                          isInerracting ? null : Navigator.of(context).pop(),
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox.square(
                              dimension:
                                  MediaQuery.of(context).size.height * 0.15,
                              child: IconButton(
                                icon: Icon(Icons.close,
                                    size:
                                        MediaQuery.of(context).size.width < 450
                                            ? 45
                                            : 65),
                                onPressed: () => isInerracting
                                    ? null
                                    : Navigator.of(context).pop(),
                                color: isInerracting
                                    ? Colors.transparent
                                    : Colors.grey[600]!.withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                            child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(2, (index) => const Spacer()),
                        )),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.15,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, bottom: 15),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.picName,
                                      style: TextStyle(
                                          color: Colors.grey.withOpacity(0.5),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    Row(
                                      children: [
                                        usersImage == null &&
                                                widget.localPic == null
                                            ? CircularProgressIndicator
                                                .adaptive()
                                            : Text(
                                                widget.localPic == null
                                                    ? usersImage!.name
                                                        .toString()
                                                    : UserModel().name +
                                                        " " +
                                                        UserModel().lastName,
                                                style: TextStyle(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                    fontSize: 20),
                                              ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        if (widget.localPic == null)
                                          Text(
                                            DateFormat("EEEEEEE, dd.MM.y")
                                                    .format(widget
                                                        .message!.sendTime) +
                                                " at " +
                                                DateFormat("HH:mm").format(
                                                    widget.message!.sendTime),
                                            style: TextStyle(
                                                color: Colors.grey
                                                    .withOpacity(0.5),
                                                fontSize: 20),
                                          ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: List.generate(3, (index) {
                                    if (index == 0 && widget.localPic != null) {
                                      return Container();
                                    }
                                    return Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: IconButton(
                                          onPressed: () => index == 0
                                              ? null
                                              : index == 1
                                                  ? setState(() {
                                                      turns += 1;
                                                    })
                                                  : Firestorage
                                                          .copyImageToClipBoard(
                                                              path: widget
                                                                  .imageUrl!)
                                                      .then((value) =>
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                                  SnackBar(
                                                            backgroundColor:
                                                                Colors.black
                                                                    .withOpacity(
                                                                        0.5),
                                                            content: Text(
                                                                "Image copied to clipboard!"),
                                                          ))),
                                          icon: Icon(
                                            index == 0
                                                ? Icons.download
                                                : index == 1
                                                    ? Icons
                                                        .rotate_90_degrees_ccw
                                                    : Icons.copy,
                                            size: 40,
                                            color: Colors.grey.withOpacity(0.5),
                                          )),
                                    );
                                  }),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: ColoredBox(
                          color: Colors.black.withOpacity(0.3),
                          child: widget.localPic != null ||
                                  widget.message!.text == null
                              ? null
                              : Padding(
                                  child: Text(
                                    widget.message!.text!,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.grey[350],
                                      fontSize: 20,
                                    ),
                                  ),
                                  padding: const EdgeInsets.all(8),
                                ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Hero(
                        tag: widget.localPic == null
                            ? widget.imageUrl!
                            : widget.localPic.toString(),
                        child: InteractiveViewer(
                          onInteractionStart: (details) => setState(() {
                            isInerracting = true;
                          }),
                          onInteractionEnd: (details) => setState(() {
                            isInerracting = false;
                          }),
                          child: RotatedBox(
                            quarterTurns: turns,
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                  maxHeight:
                                      MediaQuery.of(context).size.height * 0.7,
                                  maxWidth:
                                      MediaQuery.of(context).size.width * 0.7),
                              child: widget.localPic == null
                                  ? CachedNetworkImage(
                                      imageUrl: widget.imageUrl!,
                                    )
                                  : Image.memory(widget.localPic!),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ));
  }
}
