part of 'chatpicker_cubit.dart';

@freezed
class ChatPickerState with _$ChatPickerState {
  const factory ChatPickerState.loading() = _$ChatPickerLoadingState;
  const factory ChatPickerState.initial() = _$ChatPickerInitialState;
  const factory ChatPickerState.picked(ChatModel pickedChat, List<Message>? attachedMessages) = _$ChatPickerPickedState;
  const factory ChatPickerState.closed() = _$ChatPickerClosedState;
}
