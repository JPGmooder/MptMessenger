import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:mptmessenger/asset/colors.dart';
import 'package:mptmessenger/asset/strings.dart';
import 'package:mptmessenger/logic/dialogs_keeper/dialogs_keeper_bloc.dart';
import 'package:mptmessenger/model/chat_model.dart';
import 'package:mptmessenger/model/user_model.dart';
import 'package:mptmessenger/view/main%20screen/dialogs/dialog_widget.dart';

class DialogPicker extends StatefulWidget {
  DialogPicker(
      {Key? key,
      this.isForwarding = false,
      this.forwardedMessages,
      required this.constraints,
      this.isWideScreenOrientation = true})
      : super(key: key);
  BoxConstraints constraints;
  bool isForwarding;
  List<Message>? forwardedMessages;
  final bool isWideScreenOrientation;
  @override
  State<DialogPicker> createState() => _DialogPickerState();
}

class _DialogPickerState extends State<DialogPicker> {
  late List<Map<String, dynamic>> loadedDialogs;

  @override
  void initState() {
    loadedDialogs = [];
    context
        .read<DialogsKeeperBloc>()
        .add(const DialogsKeeperEvent.loadUsersDialogs());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (widget.isWideScreenOrientation)
          SizedBox(
            child: Neumorphic(
              style: NeumorphicStyle(
                  color: NeumorphicColors.background.withOpacity(0.5),
                  depth: 5,
                  shadowLightColor: accentColor,
                  shadowDarkColor: mainAccent,
                  lightSource: LightSource.topLeft),
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: NeumorphicText(
                  "People",
                  textAlign: TextAlign.left,
                  style: NeumorphicStyle(color: Colors.black),
                  textStyle: NeumorphicTextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: mainFontFamaly,
                  ),
                ),
              ),
            ),
          ),
        BlocListener<DialogsKeeperBloc, DialogsKeeperState>(
          listener: (ctx, state) => state.maybeWhen(
              orElse: () => null,
              messageRecieved: (message, sender, unreadedCount, chatID) {
                var currentDialog = loadedDialogs
                    .indexWhere((element) => element["Chat"] == chatID);
                setState(() {
                  loadedDialogs[currentDialog]["Message"] = message;
                  loadedDialogs[currentDialog]["Count"] = unreadedCount;
                });
              },
              dialogsLoaded: (dialogInfo) {
                List<Map<String, dynamic>> list = [];
                for (var dialog in dialogInfo) {
                  if (loadedDialogs
                      .where(
                          (element) => element["ChatID"] == dialog!["ChatID"])
                      .isEmpty) {
                    list.add(dialog!);
                  }
                }
                setState(() {
                  loadedDialogs.addAll(list);
                });
              }),
          child: Expanded(
            child: ListView.builder(
              itemCount: loadedDialogs.length,
              itemBuilder: (ctx, index) => Padding(
                padding: const EdgeInsets.all(5.0),
                child: DialogPickerWidget(
                  forwardedMessages: widget.forwardedMessages,
                  isForwarding: widget.isForwarding,
                  isWideScreenOrientation: widget.isWideScreenOrientation,
                  lastMessage: loadedDialogs[index]["Message"],
                  user: loadedDialogs[index]["User"],
                  unreadedMessagesCount: loadedDialogs[index]["Count"] ?? 0,
                  constraints: widget.constraints,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
