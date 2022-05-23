
part of 'dialogs_keeper_bloc.dart';
@freezed
class DialogsKeeperEvent with _$DialogsKeeperEvent
{
  const factory DialogsKeeperEvent.getMessage({required Message message, required DocumentReference chat, required int unreadedCount}) = _$DialogsKeeperStatesGetMessageEvent;
  const factory DialogsKeeperEvent.loadUsersDialogs() = _$DialogsloadUsersDialogsEvent;
  const factory DialogsKeeperEvent.deleteMessage({ required Message message, required String chatID}) = _$DialogsKeeperStatesDeleteMessageEvent;
  const factory DialogsKeeperEvent.addDialog({ required DocumentReference dialogUrl}) = _$DialogsKeeperStatesAddDialogEvent;
  const factory DialogsKeeperEvent.deleteDialog({ required DocumentReference dialogUrl}) = _$DialogsKeeperStatesDeleteDialogEvent;
  const factory DialogsKeeperEvent.pinDialog({ required DocumentReference dialogUrl}) = _$DialogsKeeperStatesPinDialogEvent;
  const factory DialogsKeeperEvent.unpinDialog({ required DocumentReference dialogUrl}) = _$DialogsKeeperStatesunPinDialogEvent;
}