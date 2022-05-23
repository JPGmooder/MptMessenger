part of 'message_worker_cubit.dart';

@freezed
class MessageWorkerState with _$MessageWorkerState {
  const factory MessageWorkerState.initialState() = _$MessageWorkerInitialState;
  const factory MessageWorkerState.messagesDeleted() = _$MessageWorkerMessagesDeletedState;
  const factory MessageWorkerState.answerMessagesAdded(List<Message> messages) = _$MessageWorkeranswerMessagesAddedState;
// TODO Тут еще фабрики для пересылки и ответов
}
