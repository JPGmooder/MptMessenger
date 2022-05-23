import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:mptmessenger/asset/colors.dart';
import 'package:mptmessenger/asset/strings.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mptmessenger/logic/auth/authorization_bloc.dart';
import 'package:mptmessenger/view/auth/auth_screen.dart';

class _SignInByTemplate extends StatelessWidget {
  _SignInByTemplate({
    Key? key,
    required this.height,
    required this.width,
    required this.title,
    required this.imagePath,
    this.onPressed,
    this.backgroundColor,
  }) : super(key: key);
  double height;
  double width;
  Color? backgroundColor;
  String title;
  String imagePath;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: NeumorphicButton(
        onPressed: onPressed,
        style: NeumorphicStyle(
          depth: -10,
          color: backgroundColor,
        ),
        child: Row(
          children: [
            SizedBox(
              width: width * 0.15,
              height: height,
              child: FittedBox(
                child: Image.asset(imagePath),
                fit: BoxFit.fill,
              ),
            ),
            FittedBox(
              fit: BoxFit.contain,
              child: NeumorphicText(
                title,
                style: const NeumorphicStyle(depth: 5),
                textStyle: NeumorphicTextStyle(
                  fontSize: width * 0.085,
                  fontFamily: mainFontFamaly,
                ),
              ),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
      ),
    );
  }
}

class SignInByMPTWidget extends StatelessWidget {
  SignInByMPTWidget({Key? key, required this.height, required this.width})
      : super(key: key);
  double height;
  double width;
  @override
  Widget build(BuildContext context) {
    return _SignInByTemplate(
      height: height,
      width: width,
      title: signByMptTitle,
      imagePath: mptlogoPath,
      backgroundColor: mptColor,
      onPressed: () => context.read<AuthorizationBloc>().add(
          AuthorizationEvent.SignInByMPT(
              isSilent: false, authType: AuthType.registration)),
    );
  }
}

class SignInByMicrosoftWidget extends StatelessWidget {
  SignInByMicrosoftWidget({Key? key, required this.height, required this.width})
      : super(key: key);
  double height;
  double width;
  @override
  Widget build(BuildContext context) {
    return _SignInByTemplate(
      height: height,
      width: width,
      title: signByMicrosoftTitle,
      imagePath: microsoftlogoPath,
      backgroundColor: Colors.grey.withAlpha(100),
      onPressed: () => null,
    );
  }
}
