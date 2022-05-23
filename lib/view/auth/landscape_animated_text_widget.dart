import 'dart:math';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:mptmessenger/asset/colors.dart';
import 'package:mptmessenger/asset/strings.dart';
import 'package:mptmessenger/view/auth/animated_welcome_text_widget.dart';
import 'package:mptmessenger/view/auth/auth_screen.dart';

class LandscapeAnimatedText extends StatefulWidget {
  const LandscapeAnimatedText({
    required this.windowSize,
    Key? key,
  }) : super(key: key);
  final BoxConstraints windowSize;

  Color getRandomColor() => Color.fromRGBO(
      Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), 1);

  @override
  State<LandscapeAnimatedText> createState() => _LandscapeAnimatedTextState();
}

class _LandscapeAnimatedTextState extends State<LandscapeAnimatedText>
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedMPTWidget(
          maxWidth: widget.windowSize.maxWidth,
        ),
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(
                      text: "MptMessenger ",
                      style: TextStyle(
                        color: mptColor,
                        fontFamily: mainFontFamaly,
                        fontSize: widget.windowSize.maxWidth * 0.025,
                      ),
                      children: [
                    TextSpan(
                        text: "helps you stay",
                        style: TextStyle(color: Colors.blueGrey))
                  ])),
              SizedBox(
                width: widget.windowSize.maxWidth * 0.5,
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: stayMessages
                      .map((element) => TypewriterAnimatedText(element,
                          speed: const Duration(milliseconds: 150),
                          textStyle: TextStyle(
                            overflow: TextOverflow.clip,
                            color: widget.getRandomColor(),
                            fontFamily: mainFontFamaly,
                            fontSize: widget.windowSize.maxWidth * 0.025,
                          )))
                      .toList(),
                ),
              )
            ],
          ),
          width: widget.windowSize.maxWidth * 0.5,
        )
      ],
    );
  }
}
