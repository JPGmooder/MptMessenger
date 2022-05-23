import 'dart:io';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:mptmessenger/asset/colors.dart';
import 'package:mptmessenger/asset/strings.dart';
import 'package:mptmessenger/logic/auth/authorization_bloc.dart';
import 'package:mptmessenger/logic/router/router_delegate.dart';
import 'package:mptmessenger/view/auth/animated_welcome_text_widget.dart';
import 'package:mptmessenger/view/auth/auth_enterinformation_screen.dart';
import 'package:mptmessenger/view/auth/landscape_animated_text_widget.dart';
import 'package:mptmessenger/view/standalone/form_field_widget.dart';
import 'package:mptmessenger/view/standalone/standalone_singings_widgets.dart';
import 'package:rive/rive.dart';

enum AuthType { registration, authorization }

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LayoutBuilder(
      builder: (context, constraints) => constraints.maxWidth > 600
          ? _AuthLandScapeScreen(windowSize: constraints)
          : AuthScreen(constraints: constraints),
    ));
  }
}

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key, required this.constraints}) : super(key: key);
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthorizationBloc, AuthorizationState>(
      builder: (context, state) {
        return state.maybeWhen(
            orElse: () => Scaffold(
                    body: SafeArea(
                  child: CustomScrollView(
                    slivers: [
                      SliverAppBar(
                        backgroundColor: NeumorphicColors.background,
                        floating: true,
                        pinned: false,
                        actions: [
                          IconButton(
                              onPressed: () => print("as"),
                              icon: NeumorphicIcon(
                                Icons.info,
                                style: NeumorphicStyle(
                                  depth: 10,
                                ),
                              ))
                        ],
                        flexibleSpace: FlexibleSpaceBar(
                          centerTitle: true,
                          title:
                              AnimatedMPTWidget(maxWidth: constraints.maxWidth),
                        ),
                      ),
                      SliverFillRemaining(
                          hasScrollBody: false,
                          fillOverscroll: false,
                          child: _AuthPortairScreen(windowSize: constraints)),
                    ],
                  ),
                )),
            notFullInformation: () => EnterAdditionalInfoScreen(
                  constraints: constraints,
                ));
      },
    );
  }
}

class _AuthLandScapeScreen extends StatefulWidget {
  const _AuthLandScapeScreen({Key? key, required this.windowSize})
      : super(key: key);
  final BoxConstraints windowSize;

  @override
  State<_AuthLandScapeScreen> createState() => _AuthLandScapeScreenState();
}

class _AuthLandScapeScreenState extends State<_AuthLandScapeScreen> {
  ValueKey authForm = const ValueKey(1);
  ValueKey enterInformationForm = const ValueKey(2);

  Widget __transitionBuilder(Widget widget, Animation<double> animation) {
    final rotateAnim = Tween(begin: pi, end: 0.0).animate(animation);
    return AnimatedBuilder(
      animation: rotateAnim,
      child: widget,
      builder: (context, widget) {
        final isUnder = (authForm != widget!.key);
        var tilt = ((animation.value - 0.5).abs() - 0.5) * 0.003;
        tilt *= isUnder ? -1.0 : 1.0;
        final value =
            isUnder ? min(rotateAnim.value, pi / 2) : rotateAnim.value;
        return Transform(
          transform: Matrix4.rotationY(value)..setEntry(3, 0, tilt),
          child: widget,
          alignment: Alignment.center,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        LandscapeAnimatedText(windowSize: widget.windowSize),
        SizedBox(
          width: widget.windowSize.maxWidth * 0.3,
          height: widget.windowSize.maxHeight,
          child: BlocBuilder<AuthorizationBloc, AuthorizationState>(
            builder: (context, state) {
              return AnimatedSwitcher(
                duration: const Duration(milliseconds: 1500),
                transitionBuilder: __transitionBuilder,
                layoutBuilder: (widget, list) =>
                    Stack(children: [widget!, ...list]),
                child: state.maybeWhen(
                    orElse: () => _AuthPortairScreen(
                          key: authForm,
                          windowSize: widget.windowSize.copyWith(
                              maxHeight: widget.windowSize.maxHeight,
                              maxWidth: widget.windowSize.maxWidth * 0.3),
                        ),
                    notFullInformation: () => EnterAdditionalInfoScreen(
                          key: enterInformationForm,
                          constraints: widget.windowSize,
                        )),
                switchInCurve: Curves.easeInBack,
                switchOutCurve: Curves.easeInBack.flipped,
              );
            },
          ),
        )
      ],
    );
  }
}

class _AuthPortairScreen extends StatefulWidget {
  const _AuthPortairScreen({Key? key, required this.windowSize})
      : super(key: key);
  final BoxConstraints windowSize;

  @override
  State<_AuthPortairScreen> createState() => _AuthPortairScreenState();
}

class _AuthPortairScreenState extends State<_AuthPortairScreen>
    with TickerProviderStateMixin {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TextEditingController _loginController;
  late final TextEditingController _passwordController;
  RiveAnimationController? _controller;

  late SMIBool isChecking;
  late SMINumber numLook;
  late SMIBool isHandsUp;
  bool _loginErroredText = false;
  bool _passwordErroredText = false;
  final FocusNode _passwordNode = FocusNode();
  final FocusNode _passwordRepeatNode = FocusNode();
  final FocusNode _loginNode = FocusNode();
  AuthType _groupSelection = AuthType.authorization;

  void _formValidator({bool isFinalValidation = false}) =>
      _formKey.currentState!.validate() && isFinalValidation
          ? context.read<AuthorizationBloc>().add(
              AuthorizationEvent.SignInByEmail(
                  email: _loginController.text,
                  password: _passwordController.text,
                  authType: _groupSelection))
          : null; //TODO Тут переадресация и всякие преколюхи

  @override
  void initState() {
    BlocProvider.of<AuthorizationBloc>(context).stream.listen((state) {
      state.maybeWhen(
          orElse: () => null,
          EmailNotVerified: () {
            showDialog(
                context: context,
                builder: (ctx) {
                  return AlertDialog(
                    content: SizedBox(
                        child: Text(
                            "Current email doesnt verified, please check your inbox and also spam for verify message and try again!")),
                  );
                });
          },
          SignedIn: (model) {
            final router = Get.find<DelegateRouter>();
            router.pushPage(name: "/inbox");
          },
          Error: (message) => showDialog(
              context: context,
              builder: (ctx) => AlertDialog(
                  backgroundColor: NeumorphicColors.background,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        child: NeumorphicIcon(
                          Icons.error,
                          style: NeumorphicStyle(
                            color: Colors.red[300],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      NeumorphicText(
                        "Error has occured!",
                        textStyle:
                            NeumorphicTextStyle(fontFamily: mainFontFamaly),
                        style: NeumorphicStyle(color: Colors.red[300]),
                      ),
                    ],
                  ),
                  contentPadding: const EdgeInsets.all(0),
                  content: NeumorphicText(
                    message,
                    style: NeumorphicStyle(color: mainAccent),
                    textStyle: NeumorphicTextStyle(fontFamily: mainFontFamaly),
                  ))));
    });
    rootBundle.load(teddyPath).then((value) {
      final file = RiveFile.import(value);
      final artboard = file.mainArtboard;
      var controller = artboard.stateMachineByName("Login Machine");
      if (controller != null) {
        setState(() {
          _controller = controller;
        });
        artboard.addController(controller);
        isChecking = controller.findSMI("isChecking");
        numLook = controller.findSMI("numLook");
        isHandsUp = controller.findSMI("isHandsUp");
      }
    });
    _loginController = TextEditingController();
    _passwordController = TextEditingController();
    _passwordController.addListener(() async {
      var text = _passwordController.text;
      await Future.delayed(const Duration(seconds: 3));
      if (text == _passwordController.text && text.isNotEmpty) {
        if (_passwordErroredText) {
          setState(() {
            _passwordErroredText = false;
          });
        }
      }
    });
    _loginController.addListener(() async {
      if (!isChecking.value) {
        isChecking.value = true;
      }
      var _text = _loginController.text;
      numLook.value = _loginController.selection.start !=
              _loginController.selection.end
          ? (_loginController.selection.start + _loginController.selection.end)
              .toDouble()
          : _loginController.selection.start.toDouble() * 2;
      await Future.delayed(const Duration(seconds: 3));
      if (_text == _loginController.text) {
        _formValidator();
        if (isChecking.value) {
          setState(() {
            isChecking.value = false;
          });
        }
      }
    });
    print(NeumorphicColors.background.red.toString() +
        " " +
        NeumorphicColors.background.blue.toString() +
        " " +
        NeumorphicColors.background.green.toString());

    _passwordNode.addListener(() => isHandsUp.value = _passwordNode.hasFocus);

    super.initState();
  }

  @override
  void dispose() {
    _loginController.dispose();
    _passwordController.dispose();
    _controller!.dispose();
    _passwordNode.dispose();
    _passwordRepeatNode.dispose();
    _loginNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.windowSize.maxWidth,
      height: widget.windowSize.maxHeight,
      child: Column(
        children: [
          SizedBox(
            height: widget.windowSize.maxHeight * 0.1,
          ),
          _controller == null
              ? Text("Aboba")
              : SizedBox(
                  child: RiveAnimation.asset(
                    teddyPath,
                    controllers: [_controller!],
                  ),
                  height: widget.windowSize.maxHeight * 0.20,
                  width: widget.windowSize.maxWidth,
                ),
          Neumorphic(
              child: SizedBox(
            height: _groupSelection == AuthType.authorization
                ? widget.windowSize.maxHeight * 0.6
                : widget.windowSize.maxHeight * 0.7,
            width: widget.windowSize.maxWidth * 0.9,
            child: Form(
                key: _formKey,
                child: LayoutBuilder(
                  builder: (context, constraints) => SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            NeumorphicRadio<AuthType>(
                                groupValue: _groupSelection,
                                child: const Padding(
                                  child: Text("Up"),
                                  padding: EdgeInsets.all(8),
                                ),
                                style: const NeumorphicRadioStyle(
                                    boxShape: NeumorphicBoxShape.circle()),
                                value: AuthType.registration,
                                onChanged: (type) => type != null
                                    ? setState(() {
                                        _groupSelection = type;
                                      })
                                    : null),
                            NeumorphicText(
                                _groupSelection == AuthType.authorization
                                    ? "Sign in"
                                    : "Sign up",
                                style: NeumorphicStyle(color: mainAccent),
                                textStyle: NeumorphicTextStyle(
                                  fontFamily: mainFontFamaly,
                                  fontSize: widget.windowSize.maxWidth * 0.15,
                                )),
                            NeumorphicRadio<AuthType>(
                                groupValue: _groupSelection,
                                child: const Padding(
                                  child: Text("In"),
                                  padding: EdgeInsets.all(8),
                                ),
                                style: const NeumorphicRadioStyle(
                                    boxShape: NeumorphicBoxShape.circle()),
                                value: AuthType.authorization,
                                onChanged: (type) => type != null
                                    ? setState(() {
                                        _groupSelection = type;
                                      })
                                    : null),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: constraints.maxWidth * 0.05),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AnimatedContainer(
                                alignment: Alignment.centerLeft,
                                duration: const Duration(seconds: 1),
                                height: _loginErroredText ? 14 : 0,
                                child: Text(
                                  notValidEmail,
                                  style: TextStyle(
                                      color: Colors.red[200],
                                      fontFamily: mainFontFamaly),
                                ),
                              ),
                              const SizedBox(
                                height: 14,
                              ),
                              Neumorphic(
                                style: const NeumorphicStyle(depth: -5),
                                child: NeumorphicFormField(
                                    focus: _loginNode,
                                    controller: _loginController,
                                    keyboardType: TextInputType.emailAddress,
                                    hintText: login,
                                    icon: Icons.email,
                                    validator: (_login) {
                                      setState(() {
                                        _loginErroredText = ((_login == null ||
                                                _login.isEmpty) ||
                                            (!RegExp(emailRegex)
                                                .hasMatch(_login)));
                                      });

                                      return null;
                                    }),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: constraints.maxHeight * 0.05,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: constraints.maxWidth * 0.05),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AnimatedContainer(
                                alignment: Alignment.centerLeft,
                                duration: const Duration(seconds: 1),
                                height: _passwordErroredText ? 14 : 0,
                                child: Text(passwordIsEmpty,
                                    style: TextStyle(
                                        color: Colors.red[200],
                                        fontFamily: mainFontFamaly)),
                              ),
                              const SizedBox(
                                height: 14,
                              ),
                              SizedBox(
                                  width: constraints.maxWidth * 0.9,
                                  child: Neumorphic(
                                    style: const NeumorphicStyle(depth: -5),
                                    child: NeumorphicFormField(
                                      needObscure: true,
                                      focus: _passwordNode,
                                      controller: _passwordController,
                                      keyboardType: TextInputType.emailAddress,
                                      hintText: password,
                                      icon: Icons.password,
                                      validator: (_password) {
                                        return null;
                                      },
                                    ),
                                  )),
                              if (_groupSelection == AuthType.registration)
                                SizedBox(
                                  height: constraints.maxHeight * 0.05,
                                ),
                              AnimatedOpacity(
                                opacity:
                                    _groupSelection == AuthType.authorization
                                        ? 0
                                        : 1,
                                duration: const Duration(seconds: 1),
                                child: AnimatedContainer(
                                  duration: const Duration(seconds: 1),
                                  height:
                                      _groupSelection == AuthType.authorization
                                          ? 0
                                          : constraints.maxHeight * 0.15,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                          width: constraints.maxWidth * 0.9,
                                          child: Neumorphic(
                                            style: const NeumorphicStyle(
                                                depth: -5),
                                            child: NeumorphicFormField(
                                              needObscure: true,
                                              focus: _passwordRepeatNode,
                                              keyboardType: TextInputType.text,
                                              hintText: repeatPassword,
                                              icon: Icons.password_outlined,
                                              onEditingComplete: _formValidator,
                                              validator: (_password) {
                                                if (_password !=
                                                    _passwordController.text)
                                                  setState(() {
                                                    _passwordErroredText = true;
                                                  });
                                                return null;
                                              },
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                              BlocBuilder<AuthorizationBloc,
                                      AuthorizationState>(
                                  builder: (context, state) {
                                return state.maybeWhen(
                                    LoadingState: () => const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child:
                                              NeumorphicProgressIndeterminate(
                                            height: 20,
                                          ),
                                        ),
                                    orElse: () => AuthButtons(
                                          constraints: constraints,
                                          formValidator: _formValidator,
                                        ));
                              })
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
          )),
        ],
      ),
    );
  }
}

class AuthButtons extends StatelessWidget {
  AuthButtons(
      {Key? key, required this.constraints, required this.formValidator})
      : super(key: key);

  void Function({bool isFinalValidation}) formValidator;

  BoxConstraints constraints;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: SizedBox(
            width: constraints.maxWidth * 0.8,
            child: NeumorphicButton(
              margin: const EdgeInsets.symmetric(vertical: 13),
              onPressed: () => formValidator(isFinalValidation: true),
              child: const Text(
                "Authorizate",
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        SizedBox(
          height: constraints.maxHeight * 0.05,
        ),
        Wrap(
          children: [
            SignInByMPTWidget(
              height: constraints.maxHeight * 0.1,
              width: constraints.maxWidth * 0.45 > 100
                  ? constraints.maxWidth * 0.45
                  : constraints.maxWidth,
            ),
            SignInByMicrosoftWidget(
              height: constraints.maxHeight * 0.1,
              width: constraints.maxWidth * 0.45 > 100
                  ? constraints.maxWidth * 0.45
                  : constraints.maxWidth,
            )
          ],
        ),
      ],
    );
  }
}
