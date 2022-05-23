import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:mptmessenger/logic/chat_picker/chatpicker_cubit.dart';
import 'package:mptmessenger/logic/dialogs_keeper/dialogs_keeper_bloc.dart';
import 'package:mptmessenger/logic/firemessaging/firemessaging.dart';
import 'package:mptmessenger/logic/firestorage/firestorge.dart';
import 'package:mptmessenger/logic/firestore/firestore.dart';
import 'package:mptmessenger/logic/shared_preferences/shared_preferences.dart';
import 'package:mptmessenger/model/user_model.dart';
import 'package:mptmessenger/view/auth/auth_screen.dart';
import 'package:mptmessenger/view/logic/AuthRouter.dart';
import 'package:mptmessenger/view/main%20screen/dialog/current_dialog_widget.dart';
import 'package:mptmessenger/view/main%20screen/main_screen.dart';
import 'package:mptmessenger/view/settings/account_credentials/account_credentials_widget.dart';
import 'package:mptmessenger/view/standalone/404/404_screen.dart';

class DelegateRouter extends RouterDelegate<List<RouteSettings>>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<List<RouteSettings>> {
  final _pages = <Page>[];

  @override
  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  List<Page> get currentConfiguration => List.of(_pages);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: List.of(_pages),
      onPopPage: _onPopPage,
      transitionDelegate: const DefaultTransitionDelegate(),
    );
  }

  @override
  Future<bool> popRoute() {
    if (_pages.length > 1) {
      _pages.removeLast();
      if (_pages.last.name == "/inbox") {
        FireMessaging.startRecieveNotifications(null);
      }
      notifyListeners();
      return Future.value(true);
    }

    return _confirmAppExit();
  }

  @override
  Future<void> setNewRoutePath(List<RouteSettings> configuration) {
    _setPath(configuration
        .map((routeSettings) => _createPage(routeSettings))
        .toList());
    return Future.value(null);
  }

  bool _onPopPage(Route route, dynamic result) {
    if (!route.didPop(result)) return false;
    popRoute();
    return true;
  }

  void _setPath(List<Page> pages) {
    log("UDALILOS");
    log(pages.toString());
    _pages.clear();
    _pages.addAll(pages);

    // if (_pages.first.name != '/') {
    //   _pages.insert(0, _createPage(const RouteSettings(name: '/')));
    // }
    notifyListeners();
  }

  void pushPage({required String name, dynamic arguments}) {
    if (name == "/auth") {
      _pages.clear();
    }
    _pages.add(_createPage(RouteSettings(name: name, arguments: arguments)));
    notifyListeners();
    log(_pages.toString());
  }

  MaterialPage _createPage(RouteSettings routeSettings) {
    Widget child;

    log(routeSettings.name!);
    switch (routeSettings.name) {
      case '/':
        child = AuthRouter();
        break;
      case '/auth':
        {
          child = AuthPage();
          if (FirebaseAuth.instance.currentUser != null) {
            Firestore.deleteOldNotificator()
                .then((value) => SharedPreferencesLib().signOut())
                .then((value) {
              FirebaseAuth.instance.signOut();
            });
          }
          break;
        }
      case '/inbox':
        FireMessaging.startRecieveNotifications(null);
        child = MainScreen();
        break;
      case '/credentials':
        if (kIsWeb) {
          child = NotfoundPage();
          break;
        }
        child = AccountCredentialsScreen();
        break;

      case '/chat':
        if (kIsWeb) {
          child = NotfoundPage();
          break;
        }

        Map<String, dynamic> args =
            routeSettings.arguments! as Map<String, dynamic>;
        child = BlocProvider<ChatPickerCubit>.value(
            value: args["bloc"],
            child: BlocProvider<DialogsKeeperBloc>.value(
              value: args['DialogsKeeper'],
              child: DialogWidget(
                constraints: args["Constraints"],
              ),
            ));
        break;
      default:
        child = NotfoundPage();
        break;
    }

    log(child.toString());

    if (routeSettings.name != '/' &&
        routeSettings.name != "/auth" &&
        FirebaseAuth.instance.currentUser == null) {
      child = NotfoundPage();
    }

    return MaterialPage(
      child: child,
      key: UniqueKey(),
      name: routeSettings.name,
      arguments: routeSettings.arguments,
    );
  }

  Future<bool> _confirmAppExit() async {
    final result = await showDialog<bool>(
        context: navigatorKey!.currentContext!,
        builder: (context) {
          return AlertDialog(
            title: const Text('Exit App'),
            content: const Text('Are you sure you want to exit the app?'),
            actions: [
              TextButton(
                child: const Text('Cancel'),
                onPressed: () => Navigator.pop(context, true),
              ),
              TextButton(
                child: const Text('Confirm'),
                onPressed: () => Navigator.pop(context, false),
              ),
            ],
          );
        });

    return result ?? true;
  }
}
