import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:mptmessenger/asset/strings.dart';
import 'package:mptmessenger/logic/firestore/firestore.dart';

class SearcherProvider {
  static Query<Map<String, dynamic>> getUsersByTag(String tag) {
    var collection = Firestore.fireStoreInstance
        .collection(usersDocumentPath + "/")
        .orderBy("Tag")
        .startAt([tag]);

    return collection;
  }
}