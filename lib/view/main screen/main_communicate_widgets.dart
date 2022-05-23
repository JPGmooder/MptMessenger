import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:mptmessenger/asset/strings.dart';
import 'package:mptmessenger/logic/chat_picker/chatpicker_cubit.dart';
import 'package:mptmessenger/logic/dialogs_keeper/dialogs_keeper_bloc.dart';
import 'package:mptmessenger/logic/firestore/firestore.dart';
import 'package:mptmessenger/logic/messenger/messenger_bloc.dart';
import 'package:mptmessenger/logic/searcher/searcher_bloc.dart';
import 'package:mptmessenger/model/another_user.dart';
import 'package:mptmessenger/model/user_model.dart';
import 'package:mptmessenger/view/main%20screen/dialogs/dialog_picker_widget.dart';
import 'package:mptmessenger/view/main%20screen/finded_users_by_searcher.dart';
import 'package:mptmessenger/view/main%20screen/main_dialogs.dart';
import 'package:mptmessenger/view/main%20screen/searcher.dart';

class CommunicateWidgets extends StatefulWidget {
  CommunicateWidgets(
      {required this.constraints,
      Key? key,
      this.isWideScreenOrientation = true})
      : super(key: key);
  final BoxConstraints constraints;
  final bool isWideScreenOrientation;

  @override
  State<CommunicateWidgets> createState() => _CommunicateWidgetsState();
}

class _CommunicateWidgetsState extends State<CommunicateWidgets> {
  late bool isSearching;
  late double opacityValue;
  @override
  void initState() {
   

    isSearching = false;
    opacityValue = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (ctx) => MessengerBloc(UserModel().lastChat!),
        ),
      ],
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            DialogsWindow(
              isWideScreenOrientation: widget.isWideScreenOrientation,
              constraints: widget.constraints,
              child: SearcherWidget(
                  setSearcherState: (isSearch) => setState(() {
                        opacityValue = isSearch ? 0 : 1;
                        isSearching = isSearch;
                      })),
            ),
            if (widget.isWideScreenOrientation)
              const SizedBox(
                height: 10,
              ),
            Expanded(
              child: Stack(
                children: [
                  AnimatedOpacity(
                    opacity: opacityValue,
                    duration: Duration(milliseconds: 500),
                    child: DialogsWindow(
                      isWideScreenOrientation: widget.isWideScreenOrientation,
                      constraints: widget.constraints,
                      child: DialogPicker(
                        isWideScreenOrientation: widget.isWideScreenOrientation,
                        constraints: widget.constraints,
                      ),
                    ),
                  ),
                  if (isSearching)
                    FindedUsersBySearcher(
                        isSearching: isSearching,
                        isWideScreenOrientation: widget.isWideScreenOrientation,
                        constraints: widget.constraints)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
