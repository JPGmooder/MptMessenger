part of 'dialogs_keeper_bloc.dart';

@freezed
class DialogsKeeperState with _$DialogsKeeperState
{
  const factory DialogsKeeperState.initialState() = _$DialogsKeeperMessageInitialState;
  const factory DialogsKeeperState.messageRecieved({ required Message message, required AnotherUser sender , required int unreadedCount, required DocumentReference chat}) = _$DialogsKeeperMessageRecievedState;
  const factory DialogsKeeperState.messageReaded({ required String chatID}) = _$DialogsKeeperMessageReadedState;
  const factory DialogsKeeperState.dialogsLoading() = _$DialogsLoadingState;
  const factory DialogsKeeperState.dialogsLoaded({ required List<Map<String, dynamic>?> dialogs}) = _$DialogsDialogsLoadedState;
  const factory DialogsKeeperState.dialogAdded({ required DocumentReference dialogUrl}) = _$DialogsKeeperStatesDialogAddedState;
  const factory DialogsKeeperState.dialogDeleted({ required DocumentReference dialogUrl}) = _$DialogsKeeperStatesDialogDeletedState;
  const factory DialogsKeeperState.dialogPinned({ required DocumentReference dialogUrl}) = _$DialogsKeeperStatesDialogPinnedState;
  const factory DialogsKeeperState.dialogUnpinned({ required DocumentReference dialogUrl}) = _$DialogsKeeperStatesDialogUnpinnedState;
}