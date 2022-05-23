import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mptmessenger/asset/strings.dart';
import 'package:mptmessenger/logic/firemessaging/firemessaging.dart';
import 'package:mptmessenger/logic/firestorage/firestorge.dart';
import 'package:mptmessenger/logic/message_worker/message_worker_cubit.dart';
import 'package:mptmessenger/logic/messenger/messenger_bloc.dart';
import 'package:mptmessenger/model/another_user.dart';
import 'package:mptmessenger/model/chat_model.dart';
import 'package:mptmessenger/model/user_model.dart';
import 'package:mptmessenger/view/main%20screen/dialog/current_dialog_widget.dart';

class Firestore {
  static final fireStoreInstance = FirebaseFirestore.instance;

  static Future<void> blockUser(String uid) async {
    var reference = fireStoreInstance.collection(usersDocumentPath).doc(uid);
    UserModel().blockedUsers.add(reference);
    await fireStoreInstance
        .collection(usersDocumentPath)
        .doc(UserModel().signInAccount.uid)
        .update({
      'Friendship': {
        'Blocked': UserModel().blockedUsers,
        'Friends': UserModel().friends,
        'Invited': UserModel().invited
      }
    });
  }

  static Future<void> addNewChat(DocumentReference chat) async =>
      await fireStoreInstance
          .collection(usersDocumentPath)
          .doc(UserModel().signInAccount.uid)
          .update({"Chats": UserModel().chats});

  static Future<void> setLastChat(DocumentReference chat) async {
    await fireStoreInstance
        .collection(usersDocumentPath)
        .doc(UserModel().signInAccount.uid)
        .update({"lastChat": chat});
  }

  static Future<ChatModel> openChat(DocumentReference chatReference) async {
    var findedChat = await chatReference.get();
    return await ChatModel.fromMap(
        findedChat.data() as Map<String, dynamic>, findedChat.id);
  }

  static Future<ChatModel> createChat(AnotherUser user) async {
    var currentUserToAnother = await fireStoreInstance
        .collection(usersDocumentPath)
        .doc(UserModel().signInAccount.uid)
        .get();
    var createdChat =
        ChatModel(chatId: currentUserToAnother.id + user.uID, users: [
      AnotherUser.fromMap(currentUserToAnother.data() as Map<String, dynamic>,
          currentUserToAnother.id),
      user
    ]);
    var doc = fireStoreInstance
        .collection(chatCollectionPath)
        .doc(currentUserToAnother.id + user.uID);
    await doc.set(createdChat.toMap());
    await UserModel().addNewChat(doc);
    return createdChat;
  }

  static Future<Iterable<QueryDocumentSnapshot>> isUserExists(
          String uid) async =>
      (await fireStoreInstance.collection(usersDocumentPath).get())
          .docs
          .where((element) => element.id == uid)
          .toList();

  static Future<void> createNewUser(UserModel userModel) async =>
      await fireStoreInstance
          .collection(usersDocumentPath)
          .doc(userModel.signInAccount.uid)
          .set(userModel.toMap());
  static Future<void> deleteOldNotificator() async {
    var token = await FirebaseMessaging.instance.getToken(
        vapidKey: kIsWeb
            ? "BGbfM0HhV1h7PR-3ZY2K156PJZVea8v0DRkjhNUlUwt6whyBGuYrpSLSLuLcAVvMn4QDlTk3sJqPgkTcqSw8QLs"
            : null);
    UserModel().notificationTokens.remove(token);
    await fireStoreInstance
        .collection(usersDocumentPath)
        .doc(UserModel().signInAccount.uid)
        .update({"notificationTokens": UserModel().notificationTokens});
  }

  static Future<DocumentSnapshot<Map<String, dynamic>>> getRawUser(
          {DocumentReference? reference}) async =>
      await fireStoreInstance
          .collection(usersDocumentPath)
          .doc(reference == null ? UserModel().signInAccount.uid : reference.id)
          .get();

  static Future<void> getUserByUID(UserModel userModel) async =>
      await fireStoreInstance
          .collection(usersDocumentPath)
          .doc(userModel.signInAccount.uid)
          .set(userModel.toMap());

  static Future<void> updateUser() async => await fireStoreInstance
      .collection(usersDocumentPath)
      .doc(UserModel().signInAccount.uid)
      .set(UserModel().toMap());

  static Future<ChatMessage> getLastChatMessages(
      DocumentReference chatRef) async {
    var chat = await chatRef.get();

    List<DocumentReference>? currentMessage =
        ((chat.data() as Map<String, dynamic>)['chatMessages']
            ?.cast<DocumentReference>());

    if (currentMessage != null) {
      currentMessage = currentMessage.where((element) {
        var bebra = element;
        var bebra2 = bebra.id.split("|").last;

        return DateTime.parse(bebra2).isAfter(DateTime.now().toUtc());
      }).toList();
    }
    ChatMessage messageToReturn;
    if (currentMessage == null || currentMessage.isEmpty) {
      messageToReturn = ChatMessage(
          expirationDate: DateTime.now().toUtc().add(const Duration(days: 1)),
          messages: []);
      var doc = FirebaseFirestore.instance.collection(chatMessagesPath).doc(
          chatRef.id +
              "|" +
              (messageToReturn.expirationDate.toUtc())
                  .toString()
                  .split('.')
                  .first);
      doc.set(messageToReturn.toMap());
      var currentChat = await chatRef.get();
      var currentChatModel = await ChatModel.fromMap(
          currentChat.data() as Map<String, dynamic>, chatRef.id);
      currentChatModel.chatMessages == null
          ? currentChatModel.chatMessages = [doc]
          : currentChatModel.chatMessages!.add(doc);
      await chatRef.update(currentChatModel.toMap());
      DocumentReference contributorRef =
          (chat.data() as Map<String, dynamic>)['users']
              .cast<DocumentReference>()
              .where((element) => element.id != UserModel().signInAccount.uid)
              .first;
      var contributor = await contributorRef.get();
      List<DocumentReference> chats =
          (contributor.data() as Map<String, dynamic>)['Chats']
              .cast<DocumentReference>();
      if (!chats.contains(chatRef)) {
        chats.add(chatRef);
        var data = (contributor.data() as Map<String, dynamic>);
        data.update('Chats', (value) => value = chats);
        await contributorRef.update(data);
      }
    } else {
      var bebra = (await currentMessage.last.get()).data();
      messageToReturn = ChatMessage.fromMap(bebra as Map<String, dynamic>);
    }

    return messageToReturn;
  }

  static Future<void> sendMessage(
      ChatMessage message, DocumentReference chatRef) async {
    var m = message.toMap();
    List<DocumentReference> notifiers = [];
    var currentchat = (await chatRef.get()).data() as Map<String, dynamic>;
    for (DocumentReference user in currentchat["users"]) {
      if (user.id != UserModel().signInAccount.uid) {
        notifiers.add(user);
      }
      var curUser = (await user.get()).data() as Map<String, dynamic>;
      if (!curUser.keys.contains("UnreadedMessages")) {
        curUser.addAll({
          "UnreadedMessages": [
            {
              "LastMessage": message.messages.last.toMap(),
              "Chat": chatRef,
              "Count": 0,
            }
          ]
        });
      } else {
        int index = ((curUser["UnreadedMessages"].cast<Map<String, dynamic>>())
                as List<Map<String, dynamic>>)
            .indexWhere((element) => element["Chat"].id == chatRef.id);
        if (index == -1) {
          (curUser["UnreadedMessages"].cast<Map<String, dynamic>>()).add({
            "LastMessage": message.messages.last.toMap(),
            "Chat": chatRef,
            "Count": 0,
          });
        } else {
          (curUser["UnreadedMessages"][index] as Map<String, dynamic>).update(
              "LastMessage", (value) => message.messages.last.toMap(),
              ifAbsent: () => message.messages.last.toMap());
        }
        await user.update(curUser);
      }
    }
    await fireStoreInstance
        .collection(chatMessagesPath)
        .doc(chatRef.id +
            "|" +
            message.expirationDate.toString().split('.').first)
        .update(m);
    FireMessaging.sendNotification(
        notifiers, message.messages.last, chatRef.id);
  }

  static Future<void> setUnreadedMessage(
      ChatMessage chatMessage, DocumentReference chatID) async {
    var chat = await ChatModel.fromMap(
        (await chatID.get()).data() as Map<String, dynamic>, chatID.id);
    chat.users
        .removeWhere((element) => UserModel().signInAccount.uid == element.uID);
    var lastChatMessage = ChatMessage.fromMap((await fireStoreInstance
            .collection(chatMessagesPath)
            .doc(chatID.id +
                "|" +
                chatMessage.expirationDate.toUtc().toString().split('.').first)
            .get())
        .data() as Map<String, dynamic>);
    for (AnotherUser anotherUser in chat.users) {
      var unreadedMessagesByCurrentUser = lastChatMessage.messages
          .where((element) => !element.readedBy!
              .cast<DocumentReference>()
              .toList()
              .contains(fireStoreInstance
                  .collection(usersDocumentPath)
                  .doc(anotherUser.uID)))
          .toList();
      if (unreadedMessagesByCurrentUser.isNotEmpty) {
        var lastMessageText = chatMessage.messages.last.text == null
            ? chatMessage.messages.last.attachments == null
                ? "Voice message"
                : "Attachments"
            : chatMessage.messages.last.text;
        var doc = fireStoreInstance
            .collection(usersDocumentPath)
            .doc(anotherUser.uID);
        var curUser = await doc.get();
        if ((curUser.data()!["UnreadedMessages"].cast<Map<String, dynamic>?>())
            .isNotEmpty) {
          List<Map<String, dynamic>?> list =
              curUser.data()!["UnreadedMessages"].cast<Map<String, dynamic>?>();
          var indexOfUnreaded = list.indexWhere((element) =>
              (element!["Chat"] as DocumentReference).id == chatID.id);

          list[indexOfUnreaded]!
              .update("Count", (value) => value + 1, ifAbsent: () => 1);

          await doc.update({"UnreadedMessages": list});
        } else {
          await doc.update({
            "UnreadedMessages": [
              {
                "Chat": chatID,
                "Count": 1,
              }
            ]
          });
        }
      }
    }
  }

  static Future<void> deleteMessages(List<Message> messages, deleteType delType,
      DocumentReference reference, List<String>? usersId) async {
    var curchat = ChatMessage.fromMap(
        (await reference.get()).data() as Map<String, dynamic>);
    if (delType == deleteType.forAll) {
      curchat.messages
          .where((element) => messages.contains(element))
          .forEach((mes) {
        usersId!.forEach((user) {
          mes.hidden!
              .add(fireStoreInstance.collection(usersDocumentPath).doc(user));
        });
      });
    } else {
      curchat.messages
          .where((element) => messages.contains(element))
          .forEach((element) {
        element.hidden!.add(fireStoreInstance
            .collection(usersDocumentPath)
            .doc(UserModel().signInAccount.uid));
      });
    }
    await reference.update(curchat.toMap());
  }

  static Future<void> readMessages(
      Message message, DocumentReference currentChatMessage) async {
    if ((message.readedBy!.cast<AnotherUser>())
        .where((element) => element.uID == UserModel().signInAccount.uid)
        .isEmpty) {
      var curchat = ChatMessage.fromMap(
          (await currentChatMessage.get()).data() as Map<String, dynamic>);
      var whoRead = fireStoreInstance
          .collection(usersDocumentPath)
          .doc(UserModel().signInAccount.uid);
      var updater = curchat;
      updater.messages
          .where((element) => element == message)
          .first
          .readedBy!
          .add(whoRead);

      await currentChatMessage.update(updater.toMap());
      var currentUserDB = await whoRead.get();
      List<Map<String, dynamic>?> usersUnreaded = currentUserDB
          .data()!["UnreadedMessages"]
          .cast<Map<String, dynamic>?>();
      if (usersUnreaded.isNotEmpty) {
        var findedChat = usersUnreaded.indexWhere((element) =>
            element!["Chat"] ==
            fireStoreInstance
                .collection(chatCollectionPath)
                .doc(currentChatMessage.id.split("|").first));
        if (findedChat != -1) {
          usersUnreaded[findedChat]!.update("Count", (value) => 0);
          await whoRead.update({"UnreadedMessages": usersUnreaded});
        }
      }
    }
  }

  // static Future<Map<String, dynamic>> initializeImageView(
  //     {required String imageURL, required ChatModel chat}) async {
  //   int totalCount = 0;
  //   int currentIndex = 0;
  //   String previousImage = "";
  //   String nextImage = "";
  //   for (var chatMessage in chat.chatMessages!) {
  //     var currentChatMessage = ChatMessage.fromMap(
  //         (await chatMessage.get()).data() as Map<String, dynamic>);
  //     var attachmentedMessages = currentChatMessage.messages.where((element) =>
  //         element.attachments != null &&
  //         element.attachments!.isNotEmpty &&
  //         !element.hidden!.contains(fireStoreInstance
  //             .collection(usersDocumentPath)
  //             .doc(UserModel().signInAccount.uid)));
  //     for (var message in attachmentedMessages) {
  //       for (var attachment in message.attachments!) {
  //         if (RegExp(imageRegex).hasMatch(attachment!['name'])) {
  //           totalCount += 1;
  //           if (attachment['data'].replaceFirst(
  //                   "https://firebasestorage.googleapis.com",
  //                   "https://ik.imagekit.io/jpgmooder") ==
  //               imageURL) {
  //          //   previousImage = message
  //             currentIndex = totalCount;
  //           }
  //         }
  //       }
  //     }
  //   }
  // }

  static Future<Map<String, dynamic>?> loadDialog(
      DocumentReference chat) async {
    var lastChatMessage = await getLastChatMessages(chat);
    var chatsData = await chat.get();
    var currentChat = await ChatModel.fromMap(
        chatsData.data() as Map<String, dynamic>, chatsData.id);
    return {
      "User": currentChat.users
          .where((element) => element.uID != UserModel().signInAccount.uid)
          .first,
      "Message": lastChatMessage.messages.isEmpty
          ? Message(
              id: "",
              messageType: getMessageTypeReference(messageTypes.System),
              text: "Empty dialog...",
              sendTime: DateTime.now(),
              sender: fireStoreInstance
                  .collection(usersDocumentPath)
                  .doc(UserModel().signInAccount.uid))
          : lastChatMessage.messages.last,
      "Chat": chat
    };
  }

  static Future<Message?> getLastActualMessage(ChatModel chat) async {
    chat.chatMessages!.sort((first, second) =>
        DateTime.parse(first.id.split("|").last)
            .compareTo(DateTime.parse(second.id.split("|").last)));
    for (var chatMessage in chat.chatMessages!) {
      var data = ChatMessage.fromMap(
              (await chatMessage.get()).data() as Map<String, dynamic>)
          .messages;
      if (data.isNotEmpty) {
        return data.last;
      }
    }
  }

  static DocumentReference getMessageTypeReference(messageTypes typeId) =>
      fireStoreInstance.collection(messageTypesCollectionPath).doc(typeId.name);

  static Future<List<Map<String, dynamic>?>> loadUsersDialogs() async {
    List<Map<String, dynamic>> chats = [];
    for (DocumentReference chat in UserModel().chats) {
      var chatsData = await chat.get();
      var currentChat = await ChatModel.fromMap(
          chatsData.data() as Map<String, dynamic>, chatsData.id);
      var lastChatMessage = await getLastActualMessage(currentChat);

      chats.add({
        "User": currentChat.users
            .where((element) => element.uID != UserModel().signInAccount.uid)
            .first,
        "Message": lastChatMessage ??
            Message(
                id: "",
                messageType: getMessageTypeReference(messageTypes.System),
                text: "Empty dialog...",
                sendTime: DateTime.now(),
                sender: fireStoreInstance
                    .collection(usersDocumentPath)
                    .doc(UserModel().signInAccount.uid)),
        "Count": UserModel()
                    .unreadedMessages
                    .where((element) =>
                        (element["Chat"] as DocumentReference).id == chat.id)
                    .length ==
                0
            ? 0
            : UserModel()
                .unreadedMessages
                .where((element) =>
                    (element["Chat"] as DocumentReference).id == chat.id)
                .first["Count"],
        "Chat": chat
      });
    }
    return chats;
  }
}
