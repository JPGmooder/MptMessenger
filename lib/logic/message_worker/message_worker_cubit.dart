import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mptmessenger/logic/firestore/firestore.dart';
import 'package:mptmessenger/model/chat_model.dart';
part 'message_worker_states.dart';
part 'message_worker_cubit.freezed.dart';

enum deleteType { onlyForMe, forAll }

class MessageWorkerCubit extends Cubit<MessageWorkerState> {
  MessageWorkerCubit() : super(MessageWorkerState.initialState());

  Future<void> deleteMessages(
      {required List<Message> messages,
      required deleteType deleteType,
      List<String>? usersId,
      required DocumentReference chatMessageReference}) async {
    await Firestore.deleteMessages(
        messages, deleteType, chatMessageReference, usersId);
  }

  void addToAnswer(List<Message> messages) =>
      emit(MessageWorkerState.answerMessagesAdded(messages));
}
