import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:mptmessenger/asset/strings.dart';
import 'package:mptmessenger/logic/firestore/firestore.dart';
import 'package:mptmessenger/model/chat_model.dart';

import 'package:http/http.dart' as http;
import 'package:rxdart/rxdart.dart';

class Firestorage {
  static final instance = FirebaseStorage.instance;

  // static Future<Uint8List?> getPhotoFromInternet(String webURL) async {
  //   Reference? reference;
  //   if (webURL.startsWith(defaulBucketPath)) {
  //     reference = instance.refFromURL(webURL);
  //     var downloadedImage
  //   }
  // }

  static Future<String?> loadUsersPhoto(Uint8List? photo) async {
    Reference? reference;
    photo != null
        ? reference = instance.ref(usersStoragePath +
            "/" +
            FirebaseAuth.instance.currentUser!.uid +
            "/ava.png")
        : null;
    if (reference != null && photo != null) {
      await reference.putData(photo);
      return await reference.getDownloadURL();
    }
  }

  static Future<String> getLastChatMessagesOfChat(
      String chatUid, DateTime sendTIme, ChatMessage chatMessages) async {
    var ref = instance.ref(chatStoragePath + "/" + chatUid + "/");
    var correctSendTime = sendTIme.toUtc().toString().split('.').first;
    var listedFolders = await ref.listAll();
    var foundedTimes = listedFolders.prefixes
        .where(
            (element) => DateTime.parse(element.name).isAfter(DateTime.now()))
        .toList();
    if (foundedTimes.isEmpty) {
      return chatStoragePath +
          "/" +
          chatUid +
          "/" +
          chatMessages.expirationDate.toUtc().toString().split('.').first +
          "/" +
          correctSendTime;
    } else {
      return foundedTimes.last.fullPath + "/" + correctSendTime;
    }
  }

  static Future<void> copyImageToClipBoard({required String path}) async {
    var data = await http.get(Uri.parse(path));
    await Clipboard.setData(ClipboardData(text: base64Encode(data.bodyBytes)));
  }

  static Future<Uint8List?> loadMessageAttachementFromDB(
      {required String path,
      String? fileString,
      required void Function(TaskState, Uint8List, double? percent)
          sendLoadingStatus}) async {
    Completer<Uint8List?> dataCompleter = Completer<Uint8List?>();
    if (RegExp(imageRegex).hasMatch(path)) {
      path = "https://cors-anywhere.herokuapp.com/" + path.replaceFirst("https://firebasestorage.googleapis.com",
          "https://ik.imagekit.io/jpgmooder");
      var ref = http.get(Uri.parse(path));
      var stream = ref.asStream();
      Uint8List? loadedData;
      stream.listen(
        (event) {
          sendLoadingStatus(TaskState.running, event.bodyBytes,
              (((event.contentLength! / event.bodyBytes.length) * 100).abs()));
          loadedData = event.bodyBytes;
        },
        onDone: () {
          sendLoadingStatus(TaskState.success, loadedData!, 100);
          dataCompleter.complete(loadedData);
        },
        onError: (error) {
          sendLoadingStatus(TaskState.error, Uint8List(0), null);
          dataCompleter.complete(null);
        },
      );
    } else {
      var meta = await instance.refFromURL(path).getMetadata();
      var ref = instance.refFromURL(path).writeToFile(File(fileString!));
      var stream = ref.snapshotEvents;
      log(meta.size!.toString());
      Uint8List? loadedData;
      stream.listen((event) {
        switch (event.state) {
          case TaskState.running:
            log(event.bytesTransferred.toString());
            sendLoadingStatus(
                TaskState.running,
                Uint8List(event.bytesTransferred),
                (((event.bytesTransferred / meta.size!) * 100).abs()));
            loadedData = Uint8List(event.bytesTransferred);
            break;

          case TaskState.success:
            sendLoadingStatus(TaskState.success, loadedData!, 100);
            dataCompleter.complete(loadedData);
            break;
          case TaskState.error:
            sendLoadingStatus(TaskState.error, Uint8List(0), null);
            dataCompleter.complete(null);
            break;
        }
      });
    }
    return await dataCompleter.future;
  }

  static Future<String?> loadMessageAttachementIntoDB(
      {required Uint8List data,
      required String messagePath,
      required void Function(TaskState, Uint8List, double? percent)
          sendLoadingStatus}) async {
    var puttedData = instance.ref(messagePath).putData(data);
    Completer<String> loadingStateCompleter = Completer<String>();
    puttedData.snapshotEvents.listen((event) {
      switch (event.state) {
        case TaskState.running:
          sendLoadingStatus(
              event.state,
              data,
              ((event.bytesTransferred / data.lengthInBytes) * 100)
                  .roundToDouble());
          break;
        case TaskState.error:
          sendLoadingStatus(event.state, data, null);
          break;
        case TaskState.success:
          sendLoadingStatus(event.state, data, 100);
          puttedData.snapshot.ref.getDownloadURL().then((value) {
            loadingStateCompleter.complete(value);
          });

          break;
        default:
          break;
      }
    }, onDone: () async {});

    return await loadingStateCompleter.future;
  }
}
