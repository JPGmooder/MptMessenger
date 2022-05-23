import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:mptmessenger/logic/firestore/firestore.dart';
import 'package:mptmessenger/main.dart';
import 'package:mptmessenger/model/another_user.dart';
import 'package:mptmessenger/model/chat_model.dart' as chat;
import 'package:mptmessenger/model/user_model.dart';

class FireMessaging {
  static StreamSubscription<RemoteMessage>? _foreGroundStreamSubscription;

  static Future<void> startRecieveNotifications(String? chatId) async {
    if (_foreGroundStreamSubscription != null) {
      await _foreGroundStreamSubscription!.cancel();
    }

    _foreGroundStreamSubscription =
        FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      var loadedIcon =
          (await http.get(Uri.parse(android!.imageUrl!))).bodyBytes;
      if (notification != null &&
          android != null &&
          message.data['chatId'] != chatId) {
        // AndroidBitmap<Object> androidBitmap =
        //     ByteArrayAndroidBitmap.fromBase64String(base64.encode(loadedIcon));

        flutterLocalNotificationsPlugin.show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              channel.id,
              channel.name,
              colorized: true,
              color: Colors.blue,
              playSound: true,
              icon: '@mipmap/ic_launcher',
            ),
          ),
        );
      }
    });
  }

  static Future<void> sendNotification(
      List<DocumentReference> usersToSendNotification,
      chat.Message message,
      String chatId) async {
    List<String> tokensToRecieveNotification = [];
    for (var element in usersToSendNotification) {
      if (element.id != UserModel().signInAccount.uid) {
        var currentRawUser = await Firestore.getRawUser(reference: element);
        if (AnotherUser.fromMap(currentRawUser.data() as Map<String, dynamic>,
                    currentRawUser.id)
                .status
                .status !=
            Status.donotdistrub) {
          tokensToRecieveNotification.addAll(
              currentRawUser['notificationTokens'] == null
                  ? <String>[]
                  : currentRawUser['notificationTokens'].cast<String>());
        }
      }
    }
    var sender = AnotherUser.fromMap(
        (await message.sender.get()).data() as Map<String, dynamic>,
        message.sender.id);
    try {
      for (String token in tokensToRecieveNotification) {
        await http.post(
          Uri.parse('https://fcm.googleapis.com/fcm/send'),
          headers: <String, String>{
            'Content-Type': 'application/json',
            'Authorization':
                'key=AAAAb8I9-XA:APA91bHvmGhNkdzLZykHUUiBhBqLc1DpE9oooRzGUC4Ueg_GQuDI2ZqgE1ApVxD4dbjtjU9VP27fQeAwhSIF0VCUkFab_u9mCyyGVBA5bqyy2GIFu0RzzOpOuN33yTEKV-PvW8tbU6dm',
          },
          body: jsonEncode(
            <String, dynamic>{
              'notification': <String, dynamic>{
                'body': message.text ?? "Attachments",
                'title': sender.name,
                "image": sender.photo,
              },
              'priority': 'high',
              "android": {
                "notification": {
                  "image": List.generate(3, (index) => sender.photo)
                }
              },
              "apns": {
                "payload": {
                  "aps": {"mutable-content": 1}
                },
                "fcm_options": {"image": sender.photo}
              },
              "webpush": {
                "headers": {"image": sender.photo}
              },
              'data': <String, dynamic>{
                'click_action': 'FLUTTER_NOTIFICATION_CLICK',
                'id': '1',
                'status': 'done',
                'chatId': chatId,
                'senderId': sender.uID
              },
              "to": "$token",
            },
          ),
        );
      
      }
    } catch (e) {
      print("error push notification");
    }
    if (!kIsWeb) {
    } else {}
  }
}
