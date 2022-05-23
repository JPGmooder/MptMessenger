import 'dart:convert';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:mptmessenger/asset/strings.dart';
import 'package:mptmessenger/logic/firestorage/firestorge.dart';
import 'package:rxdart/rxdart.dart';
import 'package:mptmessenger/logic/firestore/firestore.dart';

import 'package:mptmessenger/model/user_model.dart';

class AnotherUser with ChangeNotifier {
  String name;
  String uID;
  String tag;
  String photo;
  bool isBlocked;
  UserStatus status;
  late List<DocumentReference> _friends;
  AnotherUser({
    required this.name,
    required this.tag,
    required this.uID,
    required this.photo,
    required this.status,
    required this.isBlocked,
    List<DocumentReference>? friends,
  }) {
    _friends = friends ?? [];
    // Firestore.fireStoreInstance
    //     .collection(usersDocumentPath)
    //     .doc(uID)
    //     .snapshots()
    //     .distinct()
    //     .debounceTime(Duration(seconds: 3))
    //     .listen((event) {
    //   var changed = AnotherUser.fromMap(event.data()!, uID);
    //   name = changed.name;
    //   tag = changed.tag;
    //   photo = changed.photo;
    //   isBlocked = changed.isBlocked;
    //   status = changed.status;
    //   notifyListeners();
    // });
  }
// Todo: Исправить путем добавления списка групп

  Map<String, dynamic> toMap() {
    return {
      'UID': uID,
    };
  }

  factory AnotherUser.toMap(Map<String, dynamic> map, String uid) {
    log(map.toString());
    return AnotherUser(
        uID: uid,
        name:
            map['PersonalInfo']['Name'] + " " + map['PersonalInfo']['LastName'],
        tag: map['Tag'],
        photo: map['PersonalInfo']['Photo'] ??
            "https://lh3.googleusercontent.com/a-/AOh14GjuDwmNiZ4PTxkwTR6SV-NbxPugqcatp8zDMfsAcw=s96-c",
        status: UserStatus.fromMap(map['PersonalInfo']['Status']),
        friends: map['Friendship']['Friends'].cast<DocumentReference>(),
        isBlocked: (map['Friendship']['Blocked'].cast<DocumentReference>())
            .where((element) => element.id == UserModel().signInAccount.uid)
            .isNotEmpty);
  }

  factory AnotherUser.fromMap(Map<String, dynamic> map, String uid) {
    log(map.toString());
    return AnotherUser(
        uID: uid,
        name:
            map['PersonalInfo']['Name'] + " " + map['PersonalInfo']['LastName'],
        tag: map['Tag'],
        photo: map['PersonalInfo']['Photo'] ??
            "https://lh3.googleusercontent.com/a-/AOh14GjuDwmNiZ4PTxkwTR6SV-NbxPugqcatp8zDMfsAcw=s96-c",
        status: UserStatus.fromMap(map['PersonalInfo']['Status']),
        friends: map['Friendship']['Friends'].cast<DocumentReference>(),
        isBlocked: (map['Friendship']['Blocked'].cast<DocumentReference>())
            .where((element) => element.id == UserModel().signInAccount.uid)
            .isNotEmpty);
  }

  @override
  String toString() {
    return 'AnotherUser(name: $name, tag: $tag, photo: $photo, status: $status, _friends: $_friends)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AnotherUser &&
        other.name == name &&
        other.tag == tag &&
        other.photo == photo &&
        other.status == status &&
        other._friends == _friends;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        tag.hashCode ^
        photo.hashCode ^
        status.hashCode ^
        _friends.hashCode;
  }
}
