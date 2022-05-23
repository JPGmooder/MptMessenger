import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:mptmessenger/asset/strings.dart';

class AnimatedMPTWidget extends StatefulWidget {
  const AnimatedMPTWidget({Key? key, required this.maxWidth}) : super(key: key);
  final double maxWidth;

  @override
  State<AnimatedMPTWidget> createState() => _AnimatedMPTWidgetState();
}

class _AnimatedMPTWidgetState extends State<AnimatedMPTWidget>
    with SingleTickerProviderStateMixin {
  late Tween<double> registrationTextTween;
  late AnimationController registrationTextController;

  @override
  void initState() {
    registrationTextController =
        AnimationController(vsync: this, duration: const Duration(seconds: 10));
    registrationTextTween = Tween<double>(begin: 0, end: 6);
    registrationTextTween.animate(registrationTextController);

    super.initState();
    registrationTextController.forward();
  }

  @override
  void dispose() {
    registrationTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: registrationTextTween,
      duration: const Duration(seconds: 10),
      builder: (context, value, child) => NeumorphicText(
        "MPT Messenger",
        style: NeumorphicStyle(
            depth: value as double,
            intensity: value * 0.5,
            shadowLightColor: Colors.blueGrey,
            shadowDarkColor: Colors.blue,
            color: NeumorphicColors.background),
        textStyle: NeumorphicTextStyle(
            fontFamily: mainFontFamaly, fontSize: widget.maxWidth * 0.05),
      ),
    );
  }
}
