import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class NeumorphicAvatar extends StatelessWidget {
  NeumorphicAvatar(
      {Key? key,
      required this.imagePath,
      this.width,
      this.height,
      this.strokeColor})
      : super(key: key);
  String imagePath;
  double? width;
  double? height;
  Color? strokeColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Neumorphic(
        style: NeumorphicStyle(
            color: strokeColor,
            boxShape: const NeumorphicBoxShape.circle(),
            depth: -5),
        child: Padding(
          padding: const EdgeInsets.all(3),
          child: Neumorphic(
            style: const NeumorphicStyle(
                boxShape: NeumorphicBoxShape.circle(), depth: 3),
            child: CachedNetworkImage(
              imageUrl: imagePath,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
