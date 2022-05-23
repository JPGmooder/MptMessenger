import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:mptmessenger/asset/colors.dart';
import 'package:mptmessenger/asset/strings.dart';
import 'package:mptmessenger/logic/chat_picker/chatpicker_cubit.dart';
import 'package:mptmessenger/model/another_user.dart';
import 'package:mptmessenger/model/chat_model.dart';
import 'package:mptmessenger/model/user_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mptmessenger/view/standalone/default_neumorhicavatar_widget.dart';

class DialogPickerWidget extends StatelessWidget {
  const DialogPickerWidget(
      {Key? key,
      required this.constraints,
      required this.lastMessage,
      this.isForwarding = false,
      this.unreadedMessagesCount = 0,
      this.forwardedMessages,
      required this.isWideScreenOrientation,
      required this.user})
      : super(key: key);
  final BoxConstraints constraints;
  final AnotherUser user;
  final Message lastMessage;
  final int unreadedMessagesCount;
  final bool isWideScreenOrientation;
  final bool isForwarding;
  final List<Message>? forwardedMessages;
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
          color: NeumorphicColors.background,
          depth: 5,
          shadowLightColor: accentColor,
          shadowDarkColor: mainAccent,
          lightSource: LightSource.topLeft),
      child: SizedBox(
          width: constraints.maxWidth,
          child: ListTile(
            leading: NeumorphicAvatar(
              strokeColor: user.status.status == Status.online
                  ? Colors.greenAccent
                  : user.status.status == Status.donotdistrub
                      ? Colors.red
                      : null,
              imagePath: user.photo,
              height:
                  isWideScreenOrientation ? constraints.maxHeight * 0.07 : 50,
              width: isWideScreenOrientation ? constraints.maxWidth * 0.04 : 50,
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NeumorphicText(
                  "${lastMessage.sendTime.hour < 10 ? 0.toString() + lastMessage.sendTime.hour.toString() : lastMessage.sendTime.hour}:${lastMessage.sendTime.minute < 10 ? 0.toString() + lastMessage.sendTime.minute.toString() : lastMessage.sendTime.minute}",
                  style: NeumorphicStyle(depth: 5, color: mainAccent),
                  textStyle: NeumorphicTextStyle(
                      fontFamily: mainFontFamaly, fontSize: 12),
                ),
                if (unreadedMessagesCount != 0)
                  SizedBox.square(
                    dimension: constraints.maxWidth * 0.028,
                    child: Neumorphic(
                      style: NeumorphicStyle(
                          color: Colors.red[200],
                          boxShape: const NeumorphicBoxShape.circle(),
                          depth: -10),
                      child: Padding(
                        padding: const EdgeInsets.all(3),
                        child: Neumorphic(
                          style: NeumorphicStyle(
                              color: Colors.red[300],
                              boxShape: const NeumorphicBoxShape.circle(),
                              depth: 0),
                          child: Padding(
                            padding: const EdgeInsets.all(3),
                            child: Neumorphic(
                              style: NeumorphicStyle(
                                  color: Colors.red[300],
                                  boxShape: const NeumorphicBoxShape.circle(),
                                  depth: 5),
                              child: Center(
                                child: NeumorphicText(
                                  unreadedMessagesCount.toString(),
                                  style: const NeumorphicStyle(depth: 10),
                                  textStyle: NeumorphicTextStyle(
                                    fontFamily: mainFontFamaly,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            onTap: () {
              if (isForwarding) Navigator.of(context).pop();
              context
                  .read<ChatPickerCubit>()
                  .pickSingleChat(user, forwardedMessages);
            },
            style: ListTileStyle.list,
            title: Align(
              alignment: Alignment.centerLeft,
              child: NeumorphicText(
                user.name,
                style: NeumorphicStyle(
                  color: mainAccent,
                ),
                textStyle: NeumorphicTextStyle(
                    fontFamily: mainFontFamaly, fontSize: 13),
              ),
            ),
            subtitle: Text(
              lastMessage.text!.isEmpty
                  ? lastMessage.attachments!.isEmpty
                      ? "Forwarded messages"
                      : "Attachments"
                  : lastMessage.text!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: lastMessage.text!.isEmpty ? mainAccent : null,
                fontFamily: mainFontFamaly,
                fontSize: 14,
              ),
            ),
          )),
    );
  }
}
