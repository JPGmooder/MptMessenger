import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:mptmessenger/asset/strings.dart';
import 'package:mptmessenger/logic/chat_picker/chatpicker_cubit.dart';
import 'package:mptmessenger/logic/dialogs_keeper/dialogs_keeper_bloc.dart';
import 'package:mptmessenger/logic/firestore/firestore.dart';
import 'package:mptmessenger/logic/router/router_delegate.dart';
import 'package:mptmessenger/logic/searcher/searcher_bloc.dart';
import 'package:mptmessenger/model/another_user.dart';
import 'package:mptmessenger/model/user_model.dart';
import 'package:mptmessenger/view/main%20screen/dialog/current_dialog_widget.dart';
import 'package:mptmessenger/view/main%20screen/main_communicate_widgets.dart';
import 'package:mptmessenger/view/main%20screen/main_dialogs.dart';
import 'package:mptmessenger/view/main%20screen/main_screen_switcher.dart';
import 'package:mptmessenger/view/main%20screen/searcher.dart';
import 'package:mptmessenger/view/settings/settings_main_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key) {
    currentRouter = Get.find<DelegateRouter>();
  }
  late DelegateRouter currentRouter;

  @override
  Widget build(BuildContext context) {
    bool isNotWideScreen = !kIsWeb &&
        ((MediaQuery.of(context).size.width < 450 &&
                MediaQuery.of(context).size.height > 500) ||
            (MediaQuery.of(context).size.width > 450 &&
                MediaQuery.of(context).size.height < 700));
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (ctx) => SearcherBloc(),
        ),
        BlocProvider(
          create: (ctx) => DialogsKeeperBloc(),
        ),
        BlocProvider(
            create: (ctx) => ChatPickerCubit(UserModel().lastChat == null
                ? const ChatPickerState.initial()
                : const ChatPickerState.loading()))
      ],
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: NeumorphicColors.background,
          body: Padding(
            padding: EdgeInsets.only(
                left: isNotWideScreen
                    ? 0
                    : MediaQuery.of(context).size.width * 0.02,
                top: isNotWideScreen
                    ? 0
                    : MediaQuery.of(context).size.height * 0.05),
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SizedBox(
                    height: isNotWideScreen
                        ? constraints.maxHeight
                        : constraints.maxHeight * 0.85,
                    width: constraints.maxWidth,
                    child: ActualBody(
                        constraints: constraints,
                        isNotWideScreen: isNotWideScreen,
                        router: currentRouter));
              },
            ),
          )),
    );
  }
}

class ActualBody extends StatefulWidget {
  ActualBody({Key? key, this.constraints, this.isNotWideScreen, this.router})
      : super(key: key);
  bool? isNotWideScreen;
  DelegateRouter? router;
  BoxConstraints? constraints;
  @override
  State<ActualBody> createState() => _ActualBodyState();
}

class _ActualBodyState extends State<ActualBody>
    with TickerProviderStateMixin, WidgetsBindingObserver {
  late int pickedTab;
  late TabController _tabController;
  IconData changeTab(int pickerTab) {
    pickedTab = pickerTab;
    switch (pickerTab) {
      case 1:
        return pickerTab == _tabController.index
            ? Icons.home
            : Icons.home_outlined;

      case 0:
        {
          return pickerTab == _tabController.index
              ? Icons.settings
              : Icons.settings_outlined;
        }
      default:
        {
          return pickerTab == _tabController.index
              ? Icons.home
              : Icons.home_outlined;
        }
    }
  }

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
     FirebaseMessaging.instance.getInitialMessage().then((value) {
      if (value != null) {
        Firestore.getRawUser(
                reference: Firestore.fireStoreInstance
                    .collection(usersDocumentPath)
                    .doc(value.data['senderId']))
            .then((value) => context.read<ChatPickerCubit>().pickSingleChat(
                AnotherUser.fromMap(
                    value.data() as Map<String, dynamic>, value.id),
                null));
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((event) {
      Firestore.getRawUser(
              reference: Firestore.fireStoreInstance
                  .collection(usersDocumentPath)
                  .doc(event.data['senderId']))
          .then((value) => context.read<ChatPickerCubit>().pickSingleChat(
              AnotherUser.fromMap(
                  value.data() as Map<String, dynamic>, value.id),
              null));
    });
    pickedTab = 1;
    _tabController =
        TabController(length: 2, vsync: this, initialIndex: pickedTab);
    _tabController.addListener(() {
      setState(() {
        log("ЕДЕМ К " + _tabController.index.toString());
        pickedTab = _tabController.index;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);

    _tabController.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused ||
        state == AppLifecycleState.inactive ||
        state == AppLifecycleState.detached) {
      UserModel().status = UserStatus(
          content: "", lastVisitTime: DateTime.now(), status: Status.offline);
    } else if (state == AppLifecycleState.resumed) {
      UserModel().status = UserStatus(
          content: "", lastVisitTime: DateTime.now(), status: Status.online);
    }
    Firestore.updateUser();
  }

  @override
  Widget build(BuildContext context) {
    log(pickedTab.toString());
    return widget.isNotWideScreen!
        ? BlocListener<ChatPickerCubit, ChatPickerState>(
            listenWhen: (_, __) => widget.isNotWideScreen!,
            listener: (context, state) {
              state.maybeWhen(
                  orElse: () => null,
                  picked: (chat, _) =>
                      widget.router!.pushPage(name: "/chat", arguments: {
                        "Constraints": widget.constraints,
                        "bloc": BlocProvider.of<ChatPickerCubit>(context)
                      }));
            },
            child: Column(
              children: [
                Expanded(
                  child: AnimatedSwitcher(
                      duration: Duration(seconds: 1),
                      child: pickedTab == 2
                          ? MainBody(
                              isWideScreen: false,
                              constraints: widget.constraints!,
                            )
                          : SettingsMainScreen(
                              isWideScreen: !widget.isNotWideScreen!,
                              constraints: widget.constraints!,
                            )),
                ),
                MainScreenSwitcher(
                    controller: _tabController,
                    isWideScreenOrientation: false,
                    constraints: widget.constraints!,
                    changeTab: changeTab),
              ],
            ),
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MainScreenSwitcher(
                  controller: _tabController,
                  isWideScreenOrientation: true,
                  constraints: widget.constraints!,
                  changeTab: changeTab),
              Expanded(
                child: AnimatedSwitcher(
                    duration: Duration(seconds: 1),
                    child: pickedTab == 1
                        ? MainBody(
                            isWideScreen: true,
                            constraints: widget.constraints!,
                          )
                        : SettingsMainScreen(
                            isWideScreen: !widget.isNotWideScreen!,
                            constraints: widget.constraints!,
                          )),
              ),
            ],
          );
  }
}

class MainBody extends StatelessWidget {
  const MainBody({
    Key? key,
    required this.constraints,
    required this.isWideScreen,
  }) : super(key: key);
  final BoxConstraints constraints;
  final bool isWideScreen;
  @override
  Widget build(BuildContext context) {
    return !isWideScreen
        ? CommunicateWidgets(
            constraints: constraints,
            isWideScreenOrientation: false,
          )
        : Row(
            children: [
              SizedBox(
                width: constraints.maxWidth * 0.02,
              ),
              if (kIsWeb && constraints.maxWidth > 500)
                CommunicateWidgets(constraints: constraints),
              if (!kIsWeb && constraints.maxWidth > 300)
                CommunicateWidgets(constraints: constraints),
              if (kIsWeb && constraints.maxWidth > 500)
                SizedBox(
                  width: constraints.maxWidth * 0.02,
                ),
              if (!kIsWeb && constraints.maxWidth > 300)
                SizedBox(
                  width: constraints.maxWidth * 0.02,
                ),
              Expanded(child: DialogWidget(constraints: constraints)),
              SizedBox(
                width: constraints.maxWidth * 0.02,
              ),
            ],
          );
  }
}
