import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:mptmessenger/asset/colors.dart';
import 'package:mptmessenger/asset/strings.dart';
import 'package:mptmessenger/logic/chat_picker/chatpicker_cubit.dart';
import 'package:mptmessenger/logic/firestore/firestore.dart';

import 'package:mptmessenger/logic/searcher/searcher_bloc.dart';
import 'package:mptmessenger/model/another_user.dart';
import 'package:mptmessenger/model/user_model.dart';
import 'package:mptmessenger/view/main%20screen/main_dialogs.dart';
import 'package:mptmessenger/view/standalone/404/404_screen.dart';
import 'package:mptmessenger/view/standalone/default_neumorhicavatar_widget.dart';

class FindedUsersBySearcher extends StatelessWidget {
  FindedUsersBySearcher({
    Key? key,
    required this.isSearching,
    required this.constraints,
    this.isWideScreenOrientation = true,
  }) : super(key: key);

  final bool isSearching;
  final bool isWideScreenOrientation;
  BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    final bool isKeyboard = MediaQuery.of(context).viewInsets.bottom > 25;
    if (isKeyboard) {
      constraints = constraints.copyWith(
          maxHeight:
              constraints.maxHeight - MediaQuery.of(context).viewInsets.bottom);
    }

    return AnimatedOpacity(
      duration: const Duration(milliseconds: 700),
      opacity: isSearching ? 1 : 0,
      child: DialogsWindow(
        constraints: constraints,
        isWideScreenOrientation: isWideScreenOrientation,
        child: BlocBuilder<SearcherBloc, SearcherState>(
            builder: (ctx, state) => state.maybeWhen(
                orElse: () => Container(),
                usersEmpty: () => NotfoundPage(
                    isWideScreenOrientation: isWideScreenOrientation,
                    text: "No users was found by this tag",
                    constraints: constraints.copyWith(
                        maxWidth: isWideScreenOrientation
                            ? constraints.maxWidth * 0.6
                            : constraints.maxWidth,
                        maxHeight: isWideScreenOrientation
                            ? constraints.maxHeight * 0.8
                            : constraints.maxHeight)),
                usersGot: (users) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: ListOfFindedUsers(
                      constraints: constraints,
                      users: users,
                    )))),
      ),
    );
  }
}

class ListOfFindedUsers extends StatefulWidget {
  const ListOfFindedUsers(
      {Key? key, required this.constraints, required this.users})
      : super(key: key);
  final BoxConstraints constraints;
  final List<AnotherUser> users;
  @override
  State<ListOfFindedUsers> createState() => _ListOfFindedUsersState();
}

class _ListOfFindedUsersState extends State<ListOfFindedUsers>
    with SingleTickerProviderStateMixin {
  late final GlobalKey<AnimatedListState> _listKey;
  late final List<AnotherUser> _list;
  @override
  void initState() {
    _list = [];
    log("ABOBA");
    Future.delayed(Duration.zero).then((value) async {
      for (int i = 0; i < widget.users.length; i++) {
        if (!_list.contains(widget.users[i])) {
          await Future.delayed(const Duration(milliseconds: 500));
          _listKey.currentState!.insertItem(i);
          _list.add(widget.users[i]);
        }
      }
    });
    _listKey = GlobalKey<AnimatedListState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedList(
      key: _listKey,
      itemBuilder: (ctx, index, anim) {
        return SlideTransition(
            position: CurvedAnimation(curve: Curves.ease, parent: anim)
                .drive((Tween<Offset>(
              begin: const Offset(1, 0),
              end: const Offset(0, 0),
            ))),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: DialogsWindow(
                constraints: widget.constraints.copyWith(
                    maxWidth: widget.constraints.maxWidth * 0.8,
                    maxHeight: widget.constraints.maxHeight * 0.1),
                child: Dismissible(
                  direction: DismissDirection.endToStart,
                  background: Neumorphic(
                    style: NeumorphicStyle(
                        color: Colors.red[200],
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(15))),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Text(
                          "Block user",
                          softWrap: true,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: mainFontFamaly,
                              fontSize: widget.constraints.maxWidth * 0.05),
                        ),
                      ),
                    ),
                  ),
                  key: Key(widget.users[index].uID),
                  onDismissed: (dir) {
                    Firestore.blockUser(widget.users[index].uID);
                    widget.users.removeAt(index);
                    _listKey.currentState!.removeItem(
                        index,
                        (context, animation) => SlideTransition(
                                position: CurvedAnimation(
                                        curve: Curves.ease, parent: anim)
                                    .drive((Tween<Offset>(
                              begin: const Offset(1, 1),
                              end: const Offset(0, 0),
                            )))));
                  },
                  child: ListTile(
                    leading: SizedBox.square(
                        dimension: widget.constraints.maxWidth * 0.04 < 50
                            ? 50
                            : widget.constraints.maxWidth * 0.04,
                        child: NeumorphicAvatar(
                          imagePath: widget.users[index].photo,
                        )),
                    title: Text(
                      widget.users[index].name,
                      style: TextStyle(fontFamily: mainFontFamaly),
                    ),
                    subtitle: getSubtitleText(widget.users[index].status),
                    trailing: NeumorphicFloatingActionButton(
                        style: NeumorphicStyle(
                            boxShape: NeumorphicBoxShape.circle(),
                            color: NeumorphicColors.background,
                            depth: 3,
                            shadowLightColor: accentColor,
                            shadowDarkColor: mainAccent,
                            intensity: 10,
                            lightSource: LightSource.top),
                        child: Icon(
                          Icons.message,
                          color: mainAccent,
                        ),
                        onPressed: () => context
                            .read<ChatPickerCubit>()
                            .pickSingleChat(widget.users[index], null)),
                  ),
                ),
              ),
            ));
      },
    );
  }
}

Widget getSubtitleText(UserStatus user, {double? scaleFactor}) {
  switch (user.status) {
    case Status.online:
      {
        return Row(
          children: [
            Icon(
              Icons.location_on_outlined,
              color: Colors.lightGreen,
              size: scaleFactor != null ? scaleFactor * 10 : scaleFactor,
            ),
            Text(
              "Online",
              textScaleFactor: scaleFactor,
              style: TextStyle(
                  color: Colors.lightGreen, fontFamily: mainFontFamaly),
            )
          ],
        );
      }
    case Status.offline:
      {
        return Row(
          children: [
            Icon(
              Icons.offline_bolt_outlined,
              color: Colors.grey,
              size: scaleFactor != null ? scaleFactor * 10 : scaleFactor,
            ),
            Text(
              "Offline",
              textScaleFactor: scaleFactor,
              style: TextStyle(color: Colors.grey, fontFamily: mainFontFamaly),
            )
          ],
        );
      }
    case Status.donotdistrub:
      {
        return Row(
          children: [
            Icon(Icons.notifications_off_outlined,
                size: scaleFactor != null ? scaleFactor * 10 : scaleFactor,
                color: Colors.red[400]),
            Text(
              "Do not distrub",
              textScaleFactor: scaleFactor,
              style:
                  TextStyle(color: Colors.red[400], fontFamily: mainFontFamaly),
            )
          ],
        );
      }

    default:
      return Container();
  }
}
