import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:mptmessenger/asset/strings.dart';
import 'package:mptmessenger/logic/auth/authorization_bloc.dart';
import 'package:mptmessenger/logic/router/router_delegate.dart';
import 'package:mptmessenger/logic/router/router_parser.dart';
import 'package:mptmessenger/view/auth/auth_enterinformation_screen.dart';
import 'package:mptmessenger/view/logic/AuthRouter.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print('A bg message just showed up :  ${message.messageId}');
}

late AndroidNotificationChannel channel;

late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAouppfpqxqHAVABXiXxFeTyzcOPscchpc",
            authDomain: "mptmessager.firebaseapp.com",
            databaseURL:
                "https://mptmessager-default-rtdb.europe-west1.firebasedatabase.app",
            projectId: "mptmessager",
            storageBucket: "mptmessager.appspot.com",
            messagingSenderId: "480000211312",
            appId: "1:480000211312:web:be823dcfd17e18cd24b7b5",
            measurementId: "G-RPY88MKCY5"));
  } else {
    channel = const AndroidNotificationChannel(
        'high_importance_channel', //* id
        'High Importance Notifications', //* title
        description:
            'This channel is used for important notifications.', //* description
        importance: Importance.high, //* Priority
        playSound: true);

    await Firebase.initializeApp();

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);
  }
  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routerDelegate = Get.put(DelegateRouter());

  MyApp({Key? key}) : super(key: key) {
    routerDelegate.pushPage(name: '/');
  }
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthorizationBloc>(
          create: (context) => AuthorizationBloc(),
        )
      ],
      child: MaterialApp.router(
        theme: ThemeData(
            backgroundColor: NeumorphicColors.background,
            scaffoldBackgroundColor: NeumorphicColors.background),
        title: mptTitle,
        themeMode: ThemeMode.light,
        routerDelegate: routerDelegate,
        routeInformationParser: const InformationParser(),
        backButtonDispatcher: RootBackButtonDispatcher(),
      ),
    );
  }
}
