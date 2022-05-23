import 'dart:convert';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:mptmessenger/asset/strings.dart';
import 'package:mptmessenger/logic/firestore/firestore.dart';
import 'package:mptmessenger/model/another_user.dart';
import 'package:rxdart/rxdart.dart';

class ChatModel with ChangeNotifier {
  String chatId;
  List<DocumentReference>? chatMessages;
  List<AnotherUser> users;
  String? pickedBackgroundImage;
  ChatModel({
    required this.chatId,
    required this.users,
    this.chatMessages,
    this.pickedBackgroundImage,
  }) {
    // Firestore.fireStoreInstance
    //     .collection(chatCollectionPath)
    //     .doc(chatId)
    //     .snapshots().distinct()
    //     .debounceTime(Duration(seconds: 3))
    //     .listen((event) async {
    //   ChatModel.fromMap(event.data()!, chatId).then((newModel) {
    //     chatId = newModel.chatId;
    //     chatMessages = newModel.chatMessages;
    //     users = newModel.users;
    //     pickedBackgroundImage = newModel.pickedBackgroundImage;
    //     notifyListeners();
    //   });
    // });
  }

  Map<String, dynamic> toMap() {
    return {
      'users': users
          .map((e) => Firestore.fireStoreInstance
              .collection(usersDocumentPath)
              .doc(e.uID))
          .toList(),
      'chatMessages': chatMessages,
      'pickedBackgroundImage': pickedBackgroundImage,
    };
  }

  static Future<ChatModel> fromMap(
      Map<String, dynamic> map, String chatId) async {
    final List<AnotherUser> users = [];
    for (DocumentReference user in map['users']) {
      var loadedUser = await user.get();
      users.add(AnotherUser.fromMap(
          loadedUser.data() as Map<String, dynamic>, user.id));
    }
    return ChatModel(
        users: users,
        chatId: chatId,
        chatMessages:
            (map['chatMessages'] as List<dynamic>?)?.cast<DocumentReference>(),
        pickedBackgroundImage: map['pickedBackgroundImage'] ?? '');
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() =>
      'ChatModel(chatId: $chatId, chatMessages: $chatMessages, pickedBackgroundImage: $pickedBackgroundImage)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ChatModel &&
        other.chatId == chatId &&
        listEquals(other.chatMessages, chatMessages) &&
        other.pickedBackgroundImage == pickedBackgroundImage;
  }

  @override
  int get hashCode =>
      chatId.hashCode ^ chatMessages.hashCode ^ pickedBackgroundImage.hashCode;
}

class ChatMessage {
  DateTime expirationDate;
  List<Message> messages;
  ChatMessage({
    required this.expirationDate,
    required this.messages,
  });

  ChatMessage copyWith({
    DateTime? expirationDate,
    List<Message>? messages,
  }) {
    return ChatMessage(
      expirationDate: expirationDate ?? this.expirationDate,
      messages: messages ?? this.messages,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'expirationDate': expirationDate.hour == DateTime.now().hour
          ? expirationDate.toUtc().toString().split('.').first
          : expirationDate.toString().split('.').first,
      'messages': messages.map((x) => x.toMap()).toList(),
    };
  }

  factory ChatMessage.fromMap(Map<String, dynamic> map) {
    return ChatMessage(
      expirationDate: DateTime.parse(map['expirationDate']).toLocal(),
      messages: List<Message>.from(map['messages']
          .cast<Map<String, dynamic>>()
          .map((x) => Message.fromMap(x))),
    );
  }

  factory ChatMessage.fromJson(String source) =>
      ChatMessage.fromMap(json.decode(source));

  @override
  String toString() =>
      'ChatMessage(expirationDate: $expirationDate, messages: $messages)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ChatMessage &&
        other.expirationDate == expirationDate &&
        listEquals(other.messages, messages);
  }

  @override
  int get hashCode => expirationDate.hashCode ^ messages.hashCode;
}

class Message {
  String id;
  String? text;
  DateTime sendTime;
  DocumentReference sender;
  List<DocumentReference?>? hidden;
  List<Map<String, dynamic>?>? attachments;
  List<dynamic>? readedBy;
  DocumentReference messageType;

  List<Message>? forwardedMessages;
  Message({
    this.readedBy,
    this.text,
    this.hidden,
    this.forwardedMessages,
    required this.id,
    required this.messageType,
    required this.sendTime,
    required this.sender,
    this.attachments,
  });

  Map<String, String> toNotificationMessage() {
    return {'sendTime': sendTime.toUtc().toString(), 'text': text!};
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'forwardedMessages': forwardedMessages != null
          ? forwardedMessages!.map((e) => e.toMap()).toList()
          : null,
      'text': text,
      'messageType': messageType,
      'sendTime': sendTime.hour == DateTime.now().hour
          ? sendTime.toUtc().toString().split('.').first
          : sendTime.toString().split('.').first,
      'sender': sender,
      'attachments': attachments,
      'hidden': hidden ?? [],
      'readedBy': readedBy == null
          ? []
          : (readedBy!.every((element) => element is AnotherUser)
              ? readedBy!
                  .map((e) => Firestore.fireStoreInstance
                      .collection(usersDocumentPath)
                      .doc((e as AnotherUser).uID))
                  .toList()
              : readedBy),
    };
  }

  factory Message.fromMap(Map<String, dynamic> map) {
    return Message(
        id: map['id'],
        text: map['text'],
        forwardedMessages: map['forwardedMessages'] == null
            ? []
            : map['forwardedMessages']
                .map((e) => Message.fromMap(e as Map<String, dynamic>))
                .cast<Message>()
                .toList(),
        messageType: map['messageType'] as DocumentReference,
        sendTime: DateTime.parse(map['sendTime']).toLocal(),
        attachments: map['attachments'].cast<Map<String, dynamic>?>(),
        sender: map['sender'],
        readedBy: map['readedBy']?.cast<DocumentReference?>(),
        hidden: map['hidden']?.cast<DocumentReference?>());
  }

  factory Message.fromJson(String source) =>
      Message.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Message(text: $text, sendTime: $sendTime, sender: $sender, attachments: $attachments, readedby: $readedBy, hidden: $hidden)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Message &&
        other.text == text &&
        other.sendTime == sendTime &&
        other.sender == sender;
  }

  @override
  int get hashCode {
    return text.hashCode ^
        sendTime.hashCode ^
        sender.hashCode ^
        attachments.hashCode;
  }
}
