 import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:http/http.dart' as http;
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
 import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mptmessenger/asset/strings.dart';
import 'package:mptmessenger/logic/firestorage/firestorge.dart';
import 'package:mptmessenger/logic/firestorage/imagekitter.dart';
import 'package:mptmessenger/logic/firestore/firestore.dart';
import 'package:mptmessenger/logic/pickers/pickers.dart';
import 'package:mptmessenger/model/chat_model.dart';
import 'package:mptmessenger/model/user_model.dart';
part 'messenger_events.dart';
part 'messenger_states.dart';
part 'messenger_bloc.freezed.dart';

class MessengerBloc extends Bloc<MessengerEvent, MessengerState> {
  MessengerBloc(DocumentReference chat) : super(MessengerState.initial(chat)) {
    on<MessengerEvent>((event, emit) async {
      await event.maybeWhen(
          orElse: () => null,
          downloadAttachment: (urlPath, filePath) async {
            String pathToFile =
                (await FilePickerLib.getFilesDirectory())! + filePath;
            var downloadedData = await Firestorage.loadMessageAttachementFromDB(
                fileString: pathToFile,
                path: urlPath,
                sendLoadingStatus: (state, data, percent) {
                  if (state == TaskState.running) {
                    emit(MessengerState.attachmentLoading(
                        percent!, data, urlPath));
                  } else if (state == TaskState.error) {
                    emit(MessengerState.attachmentNotLoaded(
                      urlPath,
                      "Attachment not loaded, error has occured",
                    ));
                  }
                });
            emit(MessengerState.attachmentDownloaded(urlPath, downloadedData!));
          },
          sendMessage: (text, attachements, messageType, attachedMessages,
              chatReference) async {
            if (text != null || attachements != null) {
              Message currentMessage = Message(
                  id: DateTime.now()
                          .microsecondsSinceEpoch
                          .hashCode
                          .toString() +
                      UserModel().signInAccount.uid.hashCode.toString(),
                  messageType: Firestore.getMessageTypeReference(messageType),
                  attachments: attachements
                      ?.map((e) => {
                            'name': e.name,
                            'data': kIsWeb
                                ? e.bytes
                                : File(e.path!).readAsBytesSync()
                          })
                      .toList(),
                  text: text!.isEmpty
                      ? attachedMessages.isEmpty
                          ? "Forwarded messages"
                          : "Attachments"
                      : text,
                  forwardedMessages: attachedMessages,
                  sendTime: DateTime.now(),
                  sender: FirebaseFirestore.instance
                      .collection(usersDocumentPath)
                      .doc(UserModel().signInAccount.uid));

              emit(MessengerState.messageLoading(currentMessage));
              var currentChatMessage =
                  await Firestore.getLastChatMessages(chatReference);
              if (attachements != null && attachements.isNotEmpty) {
                var messagePath = await Firestorage.getLastChatMessagesOfChat(
                    chatReference.id,
                    currentMessage.sendTime,
                    currentChatMessage);
                for (int i = 0; i < currentMessage.attachments!.length; i++) {
                  try {
                    var attachmentDownloadUrl =
                        await Firestorage.loadMessageAttachementIntoDB(
                            data: currentMessage.attachments!
                                .elementAt(i)!['data'],
                            messagePath: messagePath +
                                "/" +
                                currentMessage.attachments!
                                    .elementAt(i)!['name'],
                            sendLoadingStatus: (state, data, percent) {
                              emit(MessengerState.attachmentLoading(
                                  percent ?? 0,
                                  data,
                                  currentMessage.attachments!
                                      .elementAt(i)!['name']));
                            });

                    currentMessage.attachments![i] = {
                      'name': currentMessage.attachments!.elementAt(i)!['name'],
                      'data': attachmentDownloadUrl
                    };
                    if (RegExp(imageRegex).hasMatch(
                        currentMessage.attachments!.elementAt(i)!['name'])) {
                      var data = await http.get(Uri.parse(ImageKitter.setBlur(
                          blur: 8,
                          defualtString:
                              currentMessage.attachments![i]!['name'])));
                      print(data.body);
                      currentMessage.attachments![i]!
                          .addAll({'placeHolder': data.bodyBytes});
                    }
                    emit(MessengerState.attachmentLoaded(
                        currentMessage.attachments!.elementAt(i)!['name'],
                        attachmentDownloadUrl!));
                  } catch (e) {
                    emit(MessengerState.attachmentNotLoaded(
                        currentMessage.attachments!.elementAt(i)!['name'],
                        e.toString()));
                  }
                }
              }
              currentChatMessage.messages.add(currentMessage);

              await Firestore.sendMessage(currentChatMessage, chatReference);
              emit(MessengerState.messageSended(currentMessage));

              Future.delayed(Duration(milliseconds: 500)).then((value) =>
                  Firestore.setUnreadedMessage(
                      currentChatMessage, chatReference));
            }
          });
    });
  }
}
