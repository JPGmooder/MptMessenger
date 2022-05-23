import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:mptmessenger/asset/strings.dart';
import 'package:mptmessenger/logic/auth/authorization_bloc.dart';
import 'package:mptmessenger/logic/router/router_delegate.dart';
import 'package:mptmessenger/logic/shared_preferences/shared_preferences.dart';
import 'package:mptmessenger/view/auth/auth_screen.dart';
import 'package:rive/rive.dart';

class AuthRouter extends StatefulWidget {
  AuthRouter() {
    currentRouter = Get.find<DelegateRouter>();
    SharedPreferencesLib().checkIfLoggedIn().then((value) {
      log(value.toString());
      value == null
          ? currentRouter.pushPage(name: "/auth")
          : value["Auth"] == true
              ? AuthorizationRepository.signUserByMPT(isSilent: true)
                  .then((value) => currentRouter.pushPage(name: "/inbox"))
              : AuthorizationRepository.SignUserByEmail(
                      email: value[emailKey]!, password: value[passwordKey]!)
                  .then((value) => currentRouter.pushPage(name: "/inbox"));
    });
  }
  late DelegateRouter currentRouter;

  @override
  State<AuthRouter> createState() => _AuthRouterState();
}

class _AuthRouterState extends State<AuthRouter> {
   RiveAnimationController? _controller;

  @override
  void initState() {
    super.initState();
    rootBundle.load(loadingPath).then((value) {
      final file = RiveFile.import(value);
      final artboard = file.mainArtboard;
      var controller = artboard.stateMachineByName("State Machine 1");
      if (controller != null) {
        setState(() {
          _controller = controller;
        });
        artboard.addController(controller);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      child: Center(
          child: _controller == null
              ? Container()
              : RiveAnimation.asset(
                  loadingPath,
                  controllers: [_controller!],
                )),
    );

    //* Тело - загрузка, окончание - переадресация
  }
}
