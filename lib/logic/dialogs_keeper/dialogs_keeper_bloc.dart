import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mptmessenger/logic/firestore/firestore.dart';
import 'package:mptmessenger/model/another_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mptmessenger/model/chat_model.dart';
import 'package:mptmessenger/model/user_model.dart';
part 'dialogs_keeper_events.dart';
part 'dialogs_keeper_states.dart';
part 'dialogs_keeper_bloc.freezed.dart';

class DialogsKeeperBloc extends Bloc<DialogsKeeperEvent, DialogsKeeperState> {
  DialogsKeeperBloc() : super(const DialogsKeeperState.initialState()) {
    var currentChats = <DocumentReference>[];
    var currentChatMessages = <Map<String, dynamic>>[];
    on<DialogsKeeperEvent>((event, emit) async {
      await event.maybeWhen(
          orElse: () => null,
          loadUsersDialogs: () async {
            emit(const DialogsKeeperState.dialogsLoading());
            var usersDialog = await Firestore.loadUsersDialogs();
            currentChatMessages.addAll(UserModel().unreadedMessages);
            for (var dialog in usersDialog) {
              if (!currentChats.contains(dialog!["Chat"])) {
                currentChats.add(dialog["Chat"]);
              }
            }
            emit(DialogsKeeperState.dialogsLoaded(dialogs: usersDialog));
          },
          addDialog: (dialogReference) async {
            var usersDialog = await Firestore.loadDialog(dialogReference);
            emit(DialogsKeeperState.dialogsLoaded(dialogs: [usersDialog]));
          },
          getMessage: (message, chatID, unreadedMessages) async {
            AnotherUser sender = AnotherUser.fromMap(
                (await message.sender.get()).data() as Map<String, dynamic>,
                message.sender.id);

            emit(DialogsKeeperState.messageRecieved(
                unreadedCount: unreadedMessages,
                message: message,
                sender: sender,
                chat: chatID));
          });
    });
    UserModel().addListener(() async {
      if (UserModel().chats.length != currentChats.length) {
        if (UserModel().chats.length > currentChats.length) {
          for (var chat in UserModel()
              .chats
              .where((element) => !currentChats.contains(element))) {
            currentChats.add(chat);
            add(DialogsKeeperEvent.addDialog(dialogUrl: chat));
          }
        } else {
          for (var chat in currentChats
              .where((element) => !UserModel().chats.contains(element))) {
            add(DialogsKeeperEvent.deleteDialog(dialogUrl: chat));
          }
          //  currentChats.remove(UserModel().chats);
        }
      }
      var curentInfo =
          (await Firestore.getRawUser()).data() as Map<String, dynamic>;
      for (Map<String, dynamic> unreadedMessage
          in curentInfo["UnreadedMessages"]) {
        List<Map<String, dynamic>> pickedMap = [];

        if (currentChatMessages
            .where((element) {
              return element["Chat"] == unreadedMessage["Chat"] &&
                  element["LastMessage"]["sendTime"] !=
                      unreadedMessage["LastMessage"]["sendTime"];
            })
            .toList()
            .isNotEmpty) {
          pickedMap.add(unreadedMessage);
        }
        if (pickedMap.isNotEmpty) {
          for (var item in pickedMap) {
            add(DialogsKeeperEvent.getMessage(
                message: Message(
                  id:  item["LastMessage"]["id"],
                    messageType:  item["LastMessage"]["messageType"],
                    sendTime: DateTime.parse(
                        item["LastMessage"]["sendTime"] as String),
                    text: item["LastMessage"]["text"],
                    sender: item["LastMessage"]["sender"]),
                chat: (item["Chat"] as DocumentReference),
                unreadedCount: item["Count"] ?? 0));
          }
        }
      }
    });

    add(const DialogsKeeperEvent.loadUsersDialogs());
  }
}
