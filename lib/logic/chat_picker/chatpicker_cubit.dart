import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mptmessenger/logic/firestore/firestore.dart';
import 'package:mptmessenger/model/another_user.dart';
import 'package:mptmessenger/model/chat_model.dart';
import 'package:mptmessenger/model/user_model.dart';
import 'package:mptmessenger/view/main%20screen/dialog/current_dialog_widget.dart';
part 'chatpicker_states.dart';
part 'chatpicker_cubit.freezed.dart';

class ChatPickerCubit extends Cubit<ChatPickerState> {
  ChatPickerCubit(ChatPickerState initialState) : super(initialState) {
    if (initialState is _$ChatPickerLoadingState) {
      UserModel().lastChat!.get().then((value) =>
          ChatModel.fromMap(value.data()! as Map<String, dynamic>, value.id)
              .then((value) => pickSingleChat(value.users.firstWhere(
                  (element) => element.uID != UserModel().signInAccount.uid), null)));
    }
  }

  void pickSingleChat(AnotherUser user, List<Message>? attachedMessages) async {
    emit(const ChatPickerState.loading());
    ChatModel openedChat;
    var findedChats = UserModel().chats.where((chat) =>
        chat.id == user.uID + UserModel().signInAccount.uid ||
        chat.id == UserModel().signInAccount.uid + user.uID);

    if (findedChats.isEmpty) {
      var createdChat = await Firestore.createChat(user);
      openedChat = createdChat;
    } else {
      openedChat = await Firestore.openChat(findedChats.first);
      await UserModel().setLastChat(findedChats.first);
    }

    emit(ChatPickerState.picked(openedChat, attachedMessages));
  }

  void closeChat(AnotherUser user) => emit(const ChatPickerState.closed());
}
