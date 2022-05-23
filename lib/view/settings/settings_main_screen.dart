import 'dart:typed_data';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:mptmessenger/logic/firestorage/firestorge.dart';
import 'package:mptmessenger/logic/firestore/firestore.dart';
import 'package:mptmessenger/logic/router/router_delegate.dart';
import 'package:mptmessenger/model/user_model.dart';
import 'package:mptmessenger/view/logic/image_picker.dart';
import 'package:mptmessenger/view/main%20screen/dialog/current_dialog_widget.dart';
import 'package:mptmessenger/view/main%20screen/finded_users_by_searcher.dart';
import 'package:mptmessenger/view/main%20screen/main_dialogs.dart';
import 'package:mptmessenger/view/standalone/cropper_widget.dart';
import 'package:mptmessenger/view/standalone/form_field_widget.dart';

class SettingsMainScreen extends StatefulWidget {
  const SettingsMainScreen(
      {Key? key, required this.isWideScreen, required this.constraints})
      : super(key: key);
  final BoxConstraints constraints;
  final bool isWideScreen;

  @override
  State<SettingsMainScreen> createState() => _SettingsMainScreenState();
}

class _SettingsMainScreenState extends State<SettingsMainScreen> {
  late bool isEdit;
  late Status usersStatus;
  late TextEditingController _nameController;
  late TextEditingController _lastnameController;

  @override
  void initState() {
    _nameController = TextEditingController(text: UserModel().name);
    _lastnameController = TextEditingController(text: UserModel().lastName);
    usersStatus = UserModel().status.status;
    isEdit = false;
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();

    _lastnameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: isEdit ? widget.constraints.maxHeight * 0.3 : null,
              child: Neumorphic(
                style:
                    NeumorphicStyle(depth: 5, shape: NeumorphicShape.concave),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      UsersAvatar(
                          constraints: widget.constraints.copyWith(
                              maxWidth: widget.isWideScreen
                                  ? widget.constraints.maxWidth * 0.3
                                  : widget.constraints.maxWidth)),
                      SizedBox(
                        width: 12,
                      ),
                      AnimatedSwitcher(
                        duration: Duration(milliseconds: 500),
                        child: isEdit
                            ? Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  ...List.generate(
                                      3,
                                      (index) => SizedBox(
                                            width: widget.constraints.maxWidth *
                                                0.5,
                                            height: index == 1 ? 10 : 35,
                                            child: index == 1
                                                ? Container()
                                                : Neumorphic(
                                                    child: Center(
                                                    child: NeumorphicFormField(
                                                      controller: index == 0
                                                          ? _nameController
                                                          : _lastnameController,
                                                      borderRaduis: 15,
                                                      hintText: index == 0
                                                          ? "Yours name"
                                                          : "Yours lastname",
                                                    ),
                                                  )),
                                          )),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Neumorphic(
                                    style: NeumorphicStyle(depth: -3),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Neumorphic(
                                            margin: EdgeInsets.only(bottom: 5),
                                            style: NeumorphicStyle(
                                              boxShape:
                                                  NeumorphicBoxShape.roundRect(
                                                      const BorderRadius.only(
                                                          topLeft: Radius.zero,
                                                          topRight: Radius.zero,
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  15),
                                                          bottomRight:
                                                              Radius.zero)),
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.all(6),
                                              child: Text("Pick a status!"),
                                            )),
                                        Padding(
                                          padding: EdgeInsets.all(8),
                                          child: SizedBox(
                                            height: 40,
                                            width: widget.constraints.maxWidth *
                                                0.5,
                                            child: ListView(
                                              scrollDirection: Axis.horizontal,
                                              children: List.generate(
                                                  Status.values.length,
                                                  (index) {
                                                return Padding(
                                                  padding:
                                                      const EdgeInsets.all(5),
                                                  child:
                                                      NeumorphicRadio<Status>(
                                                    value: index == 0
                                                        ? Status.online
                                                        : index == 1
                                                            ? Status
                                                                .donotdistrub
                                                            : Status.offline,
                                                    groupValue: usersStatus,
                                                    onChanged: (pickedStatus) {
                                                      if (pickedStatus !=
                                                          null) {
                                                        setState(() {
                                                          usersStatus =
                                                              pickedStatus;
                                                        });
                                                      }
                                                    },
                                                    child: getSubtitleText(
                                                        UserStatus(
                                                            content: "",
                                                            lastVisitTime:
                                                                DateTime.now(),
                                                            status: index == 0
                                                                ? Status.online
                                                                : index == 1
                                                                    ? Status
                                                                        .donotdistrub
                                                                    : Status
                                                                        .offline)),
                                                  ),
                                                );
                                              }),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            : Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    UserModel().name +
                                        " " +
                                        UserModel().lastName,
                                    textScaleFactor: 1.5,
                                    maxLines: 2,
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  FittedBox(
                                      fit: BoxFit.fill,
                                      child: getSubtitleText(UserModel().status,
                                          scaleFactor: 1.5))
                                ],
                              ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Stack(
              children: [
                SettingsBody(
                  constraints: widget.constraints,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    NeumorphicFloatingActionButton(
                        style: NeumorphicStyle(
                            lightSource: LightSource.top,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.vertical(
                                    top: Radius.zero,
                                    bottom: Radius.circular(8)))),
                        mini: true,
                        child: Icon(isEdit ? Icons.close : Icons.edit),
                        onPressed: () => setState(() {
                              isEdit = !isEdit;
                            })),
                    const SizedBox(
                      width: 15,
                    ),
                    if (isEdit)
                      NeumorphicFloatingActionButton(
                          style: NeumorphicStyle(
                              lightSource: LightSource.top,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.vertical(
                                      top: Radius.zero,
                                      bottom: Radius.circular(8)))),
                          mini: true,
                          child: Icon(Icons.save),
                          onPressed: () {
                            UserModel().name = _nameController.text;
                            UserModel().lastName = _lastnameController.text;
                            UserModel().status.status = usersStatus;
                            if (usersStatus == Status.offline) {
                              UserModel().status.lastVisitTime = UserModel()
                                      .signInAccount
                                      .metadata
                                      .lastSignInTime ??
                                  DateTime.now();
                            }
                            setState(() {
                              isEdit = false;
                            });
                            Firestore.updateUser();
                          }),
                    const SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsBody extends StatelessWidget {
  const SettingsBody({
    Key? key,
    required this.constraints,
  }) : super(key: key);

  final BoxConstraints constraints;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 5,
          ),
          ...List.generate(
              4,
              (index) => index % 2 != 0
                  ? SizedBox(
                      height: constraints.maxHeight * 0.02,
                    )
                  : SizedBox(
                      height: constraints.maxHeight * 0.08,
                      child: NeumorphicButton(
                        onPressed: () => index == 0
                            ? kIsWeb
                                ? null
                                : Get.find<DelegateRouter>()
                                    .pushPage(name: "/credentials")
                            : Get.find<DelegateRouter>()
                                .pushPage(name: "/auth"),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(children: [
                            index == 0
                                ? const Icon(
                                    Icons.security_rounded,
                                    color: Colors.lightBlue,
                                  )
                                : Icon(
                                    Icons.exit_to_app,
                                    color: Colors.red[200],
                                  ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  index == 0
                                      ? "Account credentials"
                                      : "Exit account",
                                  style: TextStyle(
                                    color: index == 0
                                        ? Colors.lightBlue
                                        : Colors.red[200],
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  index == 0
                                      ? "Manage your personal data for best securited expirence"
                                      : "Authorizate to a different account",
                                  textScaleFactor: 0.7,
                                  style: const TextStyle(color: Colors.grey),
                                ),
                              ],
                            )
                          ]),
                        ),
                      ),
                    ))
        ],
      ),
    );
  }
}

class UsersAvatar extends StatefulWidget {
  const UsersAvatar({
    Key? key,
    required this.constraints,
  }) : super(key: key);
  final BoxConstraints constraints;

  @override
  State<UsersAvatar> createState() => _UsersAvatarState();
}

class _UsersAvatarState extends State<UsersAvatar> {
  Uint8List? usersImage;
  @override
  void initState() {
    http.get(Uri.parse(UserModel().photo)).then((value) {
      setState(() {
        usersImage = value.bodyBytes;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: widget.constraints.maxWidth * 0.35,
      child: NeumorphicButton(
        padding: EdgeInsets.all(8),
        onPressed: () => usersImage == null
            ? null
            : ImagePicker()
                .pickImageFromDeviceToMemory()
                .then((value) => value == null
                    ? null
                    : showDialog(
                        context: context,
                        builder: (ctx) => AlertDialog(
                              content: CropperWidget(
                                  constraints: widget.constraints,
                                  defaultImage: value,
                                  onCroppingComplete: (image) => setState(() {
                                        usersImage = image.bytes;
                                        Navigator.of(context).pop();
                                        Firestorage.loadUsersPhoto(usersImage)
                                            .then((value) {
                                          UserModel().photo = value!;
                                          Firestore.updateUser();
                                        });
                                      })),
                            ))),
        style: NeumorphicStyle(
          lightSource: LightSource.bottomRight,
          boxShape: NeumorphicBoxShape.circle(),
        ),
        child: Neumorphic(
          style: const NeumorphicStyle(
              boxShape: NeumorphicBoxShape.circle(), depth: -5),
          child: usersImage == null
              ? const FittedBox(
                  child: CircularProgressIndicator(),
                  fit: BoxFit.fill,
                )
              : Image.memory(
                  usersImage!,
                  fit: BoxFit.fill,
                ),
        ),
      ),
    );
  }
}
