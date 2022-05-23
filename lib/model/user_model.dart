import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:mptmessenger/asset/strings.dart';
import 'package:mptmessenger/logic/firestore/firestore.dart';
import 'package:mptmessenger/view/auth/auth_enterinformation_screen.dart';

enum Role {
  administrator,
  moderator,
  confirmedUser,
  mediaUser,
  defaultUser,
  deletedUser
}

enum Status { online, offline, donotdistrub }

class UserModel with ChangeNotifier {
  bool isLoged = false;

  static UserModel? _currentUser;
  late User signInAccount;
  late String photo = "";
  UserStatus status;
  late String tag;
  Role role;
  String lastName;
  String name;
  GenderType genderType;
  DocumentReference? lastChat;
  List<String> notificationTokens;
  List<DocumentReference> blockedUsers;
  List<DocumentReference> friends;
  List<DocumentReference> invited;
  List<DocumentReference> chats;
  List<Map<String, dynamic>> notifications;
  List<Map<String, dynamic>> unreadedMessages;
  UserModel._(
      {String? tag,
      required this.role,
      required this.lastName,
      required this.name,
      required String? photo,
      required this.genderType,
      required this.status,
      required this.blockedUsers,
      required this.friends,
      required this.invited,
      required this.lastChat,
      required this.unreadedMessages,
      required this.notificationTokens,
      required this.notifications,
      required this.chats}) {
    this.photo = photo ??
        "https://lh3.googleusercontent.com/a-/AOh14GjuDwmNiZ4PTxkwTR6SV-NbxPugqcatp8zDMfsAcw=s96-c";
    signInAccount = FirebaseAuth.instance.currentUser!;
    isLoged = true;
    this.tag = tag ??= "@" + signInAccount.uid;

    Firestore.fireStoreInstance
        .collection(usersDocumentPath)
        .doc(signInAccount.uid)
        .snapshots()
        .distinct()
        .listen((value) {
      UserModel.fromMap(value.data()!);
      notifyListeners();
    });
  }

  Future<void> addNewChat(DocumentReference chat) async {
    UserModel().chats.add(chat);
    await Firestore.addNewChat(chat);
    await setLastChat(chat);
  }

  Future<void> setLastChat(DocumentReference chat) async {
    await Firestore.setLastChat(chat);
    lastChat = chat;
  }

  factory UserModel(
          {String? tag,
          Role? role,
          String? lastName,
          String? name,
          String? photo,
          UserStatus? status,
          GenderType? gender,
          DocumentReference? lastChat,
          List<DocumentReference>? blockedUsers,
          List<DocumentReference>? friends,
          List<DocumentReference>? invited,
          List<String>? notificationTokens,
          List<Map<String, dynamic>>? unreadedMessages,
          List<Map<String, dynamic>>? notifications,
          List<DocumentReference>? chats}) =>
      _currentUser ??= UserModel._(
          tag: tag,
          role: role!,
          lastName: lastName!,
          genderType: gender!,
          name: name!,
          photo: photo,
          lastChat: lastChat,
          status: status!,
          blockedUsers: blockedUsers ?? [],
          friends: friends ?? [],
          invited: invited ?? [],
          chats: chats ?? [],
          unreadedMessages: unreadedMessages ?? [],
          notificationTokens: notificationTokens ?? [],
          notifications: notifications ?? []);

  Map<String, dynamic> toMap() {
    return {
      'Notifications': notifications,
      'Chats': chats,
      'notificationTokens': notificationTokens,
      'UnreadedMessages': unreadedMessages,
      'Friendship': {
        'Blocked': blockedUsers,
        'Friends': friends,
        'Invited': invited
      },
      'PersonalInfo': {
        'Gender': FirebaseFirestore.instance
            .doc("/" + genderDocumentPath + "/" + genderType.name),
        'LastName': lastName,
        'Name': name,
        'Photo': photo,
        'Status': status.toMap()
      },
      'Role': FirebaseFirestore.instance
          .doc("/" + rolesDocumentPath + "/" + role.name),
      'Tag': tag
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    UserModel(
        gender: GenderType.values.firstWhere(((element) =>
            element.name ==
            ((map['PersonalInfo']['Gender']) as DocumentReference).id)),
        lastName: map['PersonalInfo']['LastName'],
        name: map['PersonalInfo']['Name'],
        status: UserStatus.fromMap(map['PersonalInfo']['Status']),
        role: Role.values.firstWhere(((element) =>
            element.name == ((map['Role']) as DocumentReference).id)),
        photo: map['PersonalInfo']['Photo'] ??
            "https://lh3.googleusercontent.com/a-/AOh14GjuDwmNiZ4PTxkwTR6SV-NbxPugqcatp8zDMfsAcw=s96-c",
        blockedUsers:
            map['Friendship']['Blocked'].cast<DocumentReference<Object?>>(),
        friends:
            map['Friendship']['Friends'].cast<DocumentReference<Object?>>(),
        invited:
            map['Friendship']['Invited'].cast<DocumentReference<Object?>>(),
        chats: map['Chats'].cast<DocumentReference<Object?>>(),
        unreadedMessages:
            (map['UnreadedMessages'].cast<Map<String, dynamic>>()).toList() ??
                <Map<String, dynamic>>[],
        notificationTokens: (map['notificationTokens'] == null ||
                    map['notificationTokens'].isEmpty
                ? <String>[]
                : map['notificationTokens']!.cast<String>())
            .toList(),
        notifications:
            (map['UnreadedMessages'].cast<Map<String, dynamic>>()).toList() ??
                <Map<String, dynamic>>[],
        tag: map['Tag'],
        lastChat: map['lastChat']);

    return _currentUser!;
  }
}

class UserStatus {
  String content;
  DateTime lastVisitTime;
  Status status;
  UserStatus({
    required this.content,
    required this.lastVisitTime,
    required this.status,
  });

  UserStatus copyWith({
    String? content,
    DateTime? lastVisitTime,
    Status? status,
  }) {
    return UserStatus(
      content: content ?? this.content,
      lastVisitTime: lastVisitTime ?? this.lastVisitTime,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'content': content,
      'lastVisitTime': lastVisitTime.millisecondsSinceEpoch,
      'status': FirebaseFirestore.instance
          .doc("/" + statusDocumentPath + "/" + status.name),
    };
  }

  factory UserStatus.fromMap(Map<String, dynamic> map) {
    return UserStatus(
      content: map['content'] ?? '',
      lastVisitTime: DateTime.fromMillisecondsSinceEpoch(map['lastVisitTime']),
      status: Status.values.firstWhere(((element) =>
          element.name == ((map['status']) as DocumentReference).id)),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserStatus.fromJson(String source) =>
      UserStatus.fromMap(json.decode(source));

  @override
  String toString() =>
      'UserStatus(content: $content, lastVisitTime: $lastVisitTime, status: $status)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserStatus &&
        other.content == content &&
        other.lastVisitTime == lastVisitTime &&
        other.status == status;
  }

  @override
  int get hashCode =>
      content.hashCode ^ lastVisitTime.hashCode ^ status.hashCode;
}
