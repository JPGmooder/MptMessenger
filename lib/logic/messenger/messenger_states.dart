part of 'messenger_bloc.dart';

@freezed
class MessengerState with _$MessengerState {
  const factory MessengerState.messageSended(Message message) =
      _$MessengerMessageSendedState;
  const factory MessengerState.listeningStarted(Future<void> Function(dynamic) func) =
      _$MessengerListeningStartedState;
  const factory MessengerState.attachmentLoading(
          double percent, Uint8List data, String name) =
      _$MessengerAttachmentLoadingState;
  const factory MessengerState.attachmentLoaded(
      String name, String downloadUrl) = _$MessengerAttachmentLoadedState;
  const factory MessengerState.attachmentDownloaded(
      String name, Uint8List data) = _$MessengerAttachmentDownloadedState;
  const factory MessengerState.attachmentNotLoaded(String name, String error) =
      _$MessengerAttachmentErroredState;
  const factory MessengerState.messageLoading(Message message) =
      _$MessengerMessageLoadingState;
  const factory MessengerState.messageNotSended(Message message) =
      _$MessengerMessageNotSendedState;
  const factory MessengerState.initial(DocumentReference chatReference) =
      _$MessengerInitialState;
  const factory MessengerState.messageGot(Message message, bool isCurrentUser, bool needToUpdate) =
      _$MessengerMessageGot;
      
}
