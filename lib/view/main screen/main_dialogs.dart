import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:mptmessenger/asset/colors.dart';

class DialogsWindow extends StatelessWidget {
  DialogsWindow(
      {Key? key,
      required this.child,
      required this.constraints,
      this.isWideScreenOrientation = true})
      : super(key: key);
  Widget child;
  BoxConstraints constraints;
  final bool isWideScreenOrientation;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isWideScreenOrientation
          ? constraints.maxWidth * 0.3
          : constraints.maxWidth,
      child: Neumorphic(
          style: NeumorphicStyle(
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.all(
                  Radius.circular(isWideScreenOrientation ? 15 : 0))),
              color: NeumorphicColors.background,
              depth: 3,
              shadowLightColor: accentColor,
              shadowDarkColor: mainAccent,
              intensity: 10,
              lightSource: LightSource.top),
          child:
              child //ListView(children: List.generate(10, (index) => Text("aboba"))),
          ),
    );
  }
}
