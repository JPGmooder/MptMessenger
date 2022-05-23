import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:mptmessenger/asset/colors.dart';
import 'package:mptmessenger/asset/strings.dart';
import 'package:mptmessenger/asset/textstyles.dart';
import 'package:rive/rive.dart';

class NotfoundPage extends StatefulWidget {
  NotfoundPage(
      {Key? key,
      this.text = "Page not found",
      this.constraints,
      this.isWideScreenOrientation = true})
      : super(key: key);
  String text;
  BoxConstraints? constraints;
  final bool isWideScreenOrientation;
  @override
  State<NotfoundPage> createState() => _NotfoundPageState();
}

class _NotfoundPageState extends State<NotfoundPage>
    with TickerProviderStateMixin {
  late AnimationController _textAnimationController;
  late Tween<double> _textTween;
  RiveAnimationController? _controller;
  late SMITrigger isTapped;
  @override
  void initState() {
    super.initState();
    widget.constraints ??= BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
        maxHeight: MediaQuery.of(context).size.height);
    _textAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _textTween = Tween<double>(begin: 0, end: 10);
    _textTween.animate(_textAnimationController);
    rootBundle.load(notfoundPath).then((value) {
      final file = RiveFile.import(value);
      final artboard = file.mainArtboard;
      var controller = artboard.stateMachineByName("State Machine 1");
      if (controller != null) {
        setState(() {
          _controller = controller;
        });
        artboard.addController(controller);
        isTapped = controller.findSMI("Pressed");
      }
    });
    _textAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TweenAnimationBuilder<double>(
              tween: _textTween,
              duration: const Duration(seconds: 5),
              builder: (ctx, tween, _) => NeumorphicText(
                widget.text,
                style: NeumorphicStyle(
                  intensity: 10,
                  color: mainAccent,
                  depth: tween,
                ),
                textStyle: NeumorphicTextStyle(
                    fontSize: widget.constraints!.maxWidth * 0.05),
              ),
            ),
            SizedBox(height: widget.constraints!.maxHeight * 0.2),
            SizedBox(
              width: widget.isWideScreenOrientation
                  ? widget.constraints!.maxWidth * 0.2
                  : widget.constraints!.maxWidth * 0.5,
              height: widget.isWideScreenOrientation
                  ? widget.constraints!.maxWidth * 0.2
                  : widget.constraints!.maxWidth * 0.4,
              child: GestureDetector(
                onTap: () => setState(() {
                  isTapped.fire();
                }),
                child: _controller == null
                    ? CircularProgressIndicator()
                    : RiveAnimation.asset(
                        notfoundPath,
                        controllers: [_controller!],
                      ),
              ),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
      ),
    );
  }
}
