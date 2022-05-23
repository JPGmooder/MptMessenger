part of 'messenger_bloc.dart';

@freezed
class MessengerEvent with _$MessengerEvent {
  const factory MessengerEvent.sendMessage(
      String? message,
      List<PlatformFile>? attachements,
      messageTypes messageType,
      List<Message> attachetMessages,
      DocumentReference chat) = _$MessengerSendMessageEvent;
  const factory MessengerEvent.startRecieveMessages() =
      _$MessengerStartRecieveMessagesEventFixed;
  const factory MessengerEvent.downloadAttachment(String url, String path) = _$MessengerDownloadAttachmentEvents;

  const factory MessengerEvent.typing(bool isTyping) = _$MessengerTypingEvent;


}
