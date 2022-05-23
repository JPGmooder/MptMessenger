import 'dart:typed_data';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:mptmessenger/asset/colors.dart';
import 'package:mptmessenger/asset/strings.dart';
import 'package:mptmessenger/logic/auth/authorization_bloc.dart';
import 'package:mptmessenger/view/logic/image_picker.dart';
import 'package:mptmessenger/view/standalone/cropper_widget.dart';
import 'package:mptmessenger/view/standalone/form_field_widget.dart';

import 'package:http/http.dart' as http;
import 'package:mptmessenger/view/standalone/gender_picker.dart';

enum GenderType { male, female, binary, none }

class EnterAdditionalInfoScreen extends StatefulWidget {
  EnterAdditionalInfoScreen({Key? key, required this.constraints})
      : super(key: key);
  final BoxConstraints constraints;

  @override
  State<EnterAdditionalInfoScreen> createState() =>
      _EnterAdditionalInfoScreenState();
}

class _EnterAdditionalInfoScreenState extends State<EnterAdditionalInfoScreen> {
  late TextEditingController nameController;

  late TextEditingController lastNameController;

  late GenderType gender;

  Uint8List? image;

  void _sendEnteringError(String errorText) =>
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        duration: const Duration(seconds: 3),
        content: Text(
          errorText,
          style: TextStyle(color: Colors.red[200], fontFamily: mainFontFamaly),
        ),
        backgroundColor: mainAccent,
      ));

  @override
  void initState() {
    List<String> displayedName = [];
    FirebaseAuth.instance.currentUser!.displayName != null
        ? displayedName =
            FirebaseAuth.instance.currentUser!.displayName!.split(" ")
        : null;

    nameController = TextEditingController(
        text: FirebaseAuth.instance.currentUser!.displayName != null &&
                displayedName.length == 3
            ? FirebaseAuth.instance.currentUser!.displayName!.split(" ")[0]
            : null);
    lastNameController = TextEditingController(
        text: FirebaseAuth.instance.currentUser!.displayName != null &&
                displayedName.length == 3
            ? FirebaseAuth.instance.currentUser!.displayName!.split(" ")[2]
            : null);
    gender = GenderType.none;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(widget.constraints.maxWidth * 0.05),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NeumorphicFloatingActionButton(
                    style: const NeumorphicStyle(
                        boxShape: NeumorphicBoxShape.circle()),
                    child: const Icon(Icons.arrow_back),
                    onPressed: () => context
                        .read<AuthorizationBloc>()
                        .emit(const AuthorizationState.SignedOut()),
                  ),
                  NeumorphicFloatingActionButton(
                    style: const NeumorphicStyle(
                        boxShape: NeumorphicBoxShape.circle()),
                    child: const Icon(Icons.assignment_turned_in),
                    onPressed: () {
                      ScaffoldMessenger.of(context).clearSnackBars();
                      if (nameController.text.isEmpty)
                        _sendEnteringError("Name is empty, please try again");
                      else if (lastNameController.text.isEmpty)
                        _sendEnteringError(
                            "Last name is empty, please try again");
                      else {
                        context.read<AuthorizationBloc>().add(
                            AuthorizationEvent.AddingAdditionalInformation(
                                name: nameController.text,
                                lastname: lastNameController.text,
                                gender: gender,
                                imagePath: image));
                      }
                    },
                  )
                ],
              ),
              SizedBox(
                height: widget.constraints.maxHeight * 0.03,
              ),
              SizedBox(
                  height: widget.constraints.maxHeight * 0.75,
                  width: widget.constraints.maxWidth * 0.85,
                  child: Neumorphic(
                    style: const NeumorphicStyle(depth: 10),
                    child: SingleChildScrollView(
                        child: MainBody(
                      imagePicker: (image) => this.image = image,
                      genderPicker: (gender) {
                        switch (gender) {
                          case 0:
                            this.gender = GenderType.male;
                            break;
                          case 1:
                            this.gender = GenderType.female;
                            break;

                          case 2:
                            this.gender = GenderType.binary;
                            break;

                          case 3:
                            this.gender = GenderType.none;
                            break;
                        }
                      },
                      constraints: widget.constraints,
                      lastNameController: lastNameController,
                      nameController: nameController,
                    )),
                  ))
            ]),
          ),
        ),
      ),
    );
  }
}

class MainBody extends StatelessWidget {
  MainBody(
      {Key? key,
      required this.nameController,
      required this.lastNameController,
      required this.imagePicker,
      required this.constraints,
      required this.genderPicker})
      : super(key: key);
  final BoxConstraints constraints;
  final TextEditingController nameController;
  final TextEditingController lastNameController;
  void Function(int gender) genderPicker;
  void Function(Uint8List? image) imagePicker;

  int pickedGender = 3;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              "Let's get acquainted",
              style: TextStyle(
                  fontFamily: mainFontFamaly,
                  color: mainAccent,
                  fontSize: MediaQuery.of(context).size.width > 500 ? 20 : 15),
            ),
          ),
        ),
        _Image_Picker(
          imagepicker: imagePicker,
          constraints: constraints,
        ),
        _AdditionalTextField(
          controller: nameController,
          constraints: constraints,
          title: ADDIFSName,
        ),
        SizedBox(
          height: constraints.maxHeight * 0.03,
        ),
        _AdditionalTextField(
          controller: lastNameController,
          constraints: constraints,
          title: ADDIFSLastName,
        ),
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: constraints.maxWidth * 0.9,
            child: GenderPickerWIdget(
                changeValue: (value) {
                  pickedGender = value;
                  genderPicker(pickedGender);
                  return pickedGender;
                },
                constraints: constraints),
          ),
        )
      ],
    );
  }
}

class _AdditionalTextField extends StatelessWidget {
  const _AdditionalTextField({
    Key? key,
    required this.title,
    required this.controller,
    required this.constraints,
  }) : super(key: key);
  final String title;
  final BoxConstraints constraints;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: NeumorphicText(
            title,
            style: NeumorphicStyle(
              color: mainAccent,
            ),
            textStyle: NeumorphicTextStyle(
                fontFamily: mainFontFamaly,
                fontSize: constraints.maxWidth > 500 ? 20 : 15),
          ),
        ),
        SizedBox(
          height: kIsWeb ? 50 : null,
          child: Neumorphic(
            child: NeumorphicFormField(
              controller: controller,
              borderRaduis: 30,
            ),
            style: NeumorphicStyle(
                depth: -5,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(30))),
          ),
        ),
      ],
    );
  }
}

class _Image_Picker extends StatefulWidget {
  const _Image_Picker(
      {Key? key, required this.constraints, required this.imagepicker})
      : super(key: key);
  final BoxConstraints constraints;
  final void Function(Uint8List? image) imagepicker;
  @override
  State<_Image_Picker> createState() => _Image_PickerState();
}

class _Image_PickerState extends State<_Image_Picker> {
  Uint8List? usersImage;
  @override
  void initState() {
    if (FirebaseAuth.instance.currentUser!.photoURL != null) {
      http
          .get(Uri.parse(FirebaseAuth.instance.currentUser!.photoURL!))
          .then((value) => setState(() {
                usersImage = value.bodyBytes;
              }));
    }
    super.initState();
  }

  Future<Uint8List?> croppImage({
    required void Function(MemoryImage) onCroppingComplete,
    required Uint8List defualtImage,
    required BoxConstraints constraints,
    required BuildContext ctx,
  }) async {
    Uint8List? imageToReturn;
    await showDialog(
        context: ctx,
        builder: (_) => AlertDialog(
            content: CropperWidget(
                constraints: constraints,
                defaultImage: defualtImage,
                onCroppingComplete: onCroppingComplete)));
    return imageToReturn;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.constraints.maxHeight / 5,
      width: widget.constraints.maxHeight / 5,
      child: Stack(
        children: [
          SizedBox(
            height: widget.constraints.maxHeight / 5,
            width: widget.constraints.maxHeight / 5,
            child: GestureDetector(
              onTap: () => ImagePicker()
                  .pickImageFromDeviceToMemory()
                  .then((value) => croppImage(
                      constraints: widget.constraints,
                      ctx: context,
                      defualtImage: value!,
                      onCroppingComplete: (croppedImage) {
                        setState(() {
                          usersImage = croppedImage.bytes;
                          widget.imagepicker(usersImage);
                        });
                        if (Navigator.of(context).canPop())
                          Navigator.of(context).pop();
                      })),
              child: Neumorphic(
                style: const NeumorphicStyle(
                    boxShape: NeumorphicBoxShape.circle(), depth: -10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                      child: FittedBox(
                        child: usersImage == null
                            ? NeumorphicIcon(Icons.face,
                                style: NeumorphicStyle(
                                    color: Colors.grey.withAlpha(100)))
                            : Image.memory(usersImage!),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(300)),
                ),
              ),
            ),
          ),
          if (usersImage != null)
            Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                width: 30,
                height: 30,
                child: NeumorphicFloatingActionButton(
                  style: NeumorphicStyle(
                    boxShape: NeumorphicBoxShape.circle(),
                  ),
                  onPressed: () => setState(() {
                    usersImage = null;
                  }),
                  child: Align(
                    alignment: Alignment.center,
                    child: NeumorphicIcon(
                      Icons.close,
                      style: NeumorphicStyle(
                        color: Colors.red[200],
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
