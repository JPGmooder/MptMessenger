import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:mime/mime.dart';
import 'package:mptmessenger/asset/colors.dart';
import 'package:mptmessenger/asset/strings.dart';
import 'package:mptmessenger/view/main%20screen/dialog/image_viewer.dart';
import 'package:open_file/open_file.dart';

class AttachmentsWidget extends StatefulWidget {
  const AttachmentsWidget(
      {Key? key,
      required this.files,
      required this.constraints,
      required this.onPressed})
      : super(key: key);
  final List<PlatformFile> files;
  final BoxConstraints constraints;
  final void Function(PlatformFile path) onPressed;

  @override
  State<AttachmentsWidget> createState() => _AttachmentsWidgetState();
}

class _AttachmentsWidgetState extends State<AttachmentsWidget> {
  late int filesImageLength = widget.files
      .where((element) => RegExp(imageRegex).hasMatch(element.name))
      .length;
  late bool isPicEx;
  late bool isFileEx;
  @override
  void initState() {
    isPicEx = false;
    isFileEx = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).viewInsets.bottom != 0 &&
        (isFileEx || isPicEx)) {
      setState(() {
        isFileEx = false;
        isPicEx = false;
      });
    }
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ExpansionPanelList(
          expansionCallback: (panelIndex, isExpanded) {
            if (MediaQuery.of(context).viewInsets.bottom != 0) {
              isExpanded = false;
              setState(() {
                isFileEx = isExpanded;
                isPicEx = isExpanded;
              });
            }
            log(panelIndex.toString());
            if (panelIndex == 0) {
              setState(() {
                filesImageLength == 0
                    ? isFileEx = !isExpanded
                    : isPicEx = !isExpanded;
              });
            } else {
              setState(() {
                isFileEx = !isExpanded;
              });
            }
            log(isPicEx.toString());
            log(isFileEx.toString());
          },
          children: [
            if (filesImageLength != 0)
              ExpansionPanel(
                backgroundColor: accentColor,
                isExpanded: isPicEx,
                canTapOnHeader: true,
                headerBuilder: (context, isExpanded) =>
                    Center(child: NeumorphicText("Attached pictures")),
                body: SizedBox(
                  width: widget.constraints.maxWidth,
                  child: Wrap(
                    children: widget.files
                        .where((element) =>
                            RegExp(imageRegex).hasMatch(element.name))
                        .toList()
                        .map((e) {
                      return PickedWidget(
                          size: widget.constraints.maxWidth * 0.06,
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: PickedImageWidget(
                              file: e,
                            ),
                          ),
                          onPressed: () => widget.onPressed(e));
                    }).toList(),
                  ),
                ),
              ),
            if (filesImageLength < widget.files.length)
              ExpansionPanel(
                  backgroundColor: mainAccent,
                  isExpanded: isFileEx,
                  canTapOnHeader: true,
                  headerBuilder: (context, isExpanded) => Center(
                        child: NeumorphicText(
                          "Attached files",
                        ),
                      ),
                  body: SizedBox(
                    width: widget.constraints.maxWidth,
                    child: Wrap(
                      children: widget.files
                          .where((element) =>
                              !RegExp(imageRegex).hasMatch(element.name))
                          .toList()
                          .map((e) => PickedWidget(
                              size: widget.constraints.maxWidth * 0.05,
                              child: PickedFileWidget(
                                file: e,
                              ),
                              onPressed: () => widget.onPressed(e)))
                          .toList(),
                    ),
                  ))
          ]),
    );
  }
}

class PickedWidget extends StatelessWidget {
  const PickedWidget(
      {Key? key,
      required this.size,
      required this.child,
      required this.onPressed})
      : super(key: key);
  final void Function() onPressed;
  final double size;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: size + 10,
      child: Stack(children: [
        SizedBox.square(
          dimension: size,
          child: child,
        ),
        Align(
          alignment: Alignment.topRight,
          child: SizedBox.square(
            dimension: size / 2.8,
            child: NeumorphicFloatingActionButton(
                mini: true,
                style: const NeumorphicStyle(
                    boxShape: NeumorphicBoxShape.circle()),
                child: Icon(
                  Icons.close,
                  color: Colors.red[400],
                ),
                onPressed: onPressed),
          ),
        )
      ]),
    );
  }
}

class PickedFileWidget extends StatelessWidget {
  const PickedFileWidget({Key? key, required this.file}) : super(key: key);
  final PlatformFile file;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Neumorphic(
          child: Center(
        child: NeumorphicText(
          file.name,
          style: const NeumorphicStyle(color: Colors.grey, depth: 4),
        ),
      )),
    );
  }
}

class PickedImageWidget extends StatelessWidget {
  const PickedImageWidget({Key? key, required this.file}) : super(key: key);
  final PlatformFile file;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Hero(
        child: Image.memory(file.bytes!),
        tag: file.bytes.toString(),
      ),
      onTap: () => showDialog(
          context: context,
          builder: (ctx) => ImageViewer(
                picName: file.name,
                localPic: file.bytes,
              )),
    );
  }
}
