import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:mptmessenger/asset/colors.dart';
import 'package:mptmessenger/model/chat_model.dart';
import 'package:mptmessenger/view/main%20screen/dialogs/dialog_picker_widget.dart';
import 'package:mptmessenger/view/main%20screen/main_dialogs.dart';

class ForwardMessageToAnotherChatWidget extends StatelessWidget {
  const ForwardMessageToAnotherChatWidget(
      {Key? key, required this.forwardedMessages})
      : super(key: key);
  final List<Message> forwardedMessages;
  @override
  Widget build(BuildContext context) {
    var constraints = BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
        maxHeight: MediaQuery.of(context).size.height);
    return AlertDialog(
      backgroundColor: NeumorphicColors.background,
      actions: [
        NeumorphicButton(
          child: Text("Close"),
          onPressed: () => Navigator.of(context).pop(),
        )
      ],
      title: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("Pick chat to forward"),
            NeumorphicFloatingActionButton(
                mini: true,
                child: Icon(Icons.close),
                onPressed: () => Navigator.of(context).pop())
          ]),
          const SizedBox(
            height: 5,
          ),
          Divider(
            thickness: 2,
            color: mainAccent,
          )
        ],
      ),
      content: DialogsWindow(
        constraints: constraints,
        child: DialogPicker(
          forwardedMessages: forwardedMessages,
          isForwarding: true,
          isWideScreenOrientation:
              constraints.maxWidth > 400 && constraints.maxHeight < 400,
          constraints: constraints,
        ),
      ),
    );
  }
}
