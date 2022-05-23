import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:mptmessenger/asset/strings.dart';
import 'package:mptmessenger/model/user_model.dart';
import 'package:mptmessenger/view/standalone/form_field_widget.dart';

class AccountCredentialsScreen extends StatefulWidget {
  AccountCredentialsScreen({Key? key}) : super(key: key);

  @override
  State<AccountCredentialsScreen> createState() =>
      _AccountCredentialsScreenState();
}

class _AccountCredentialsScreenState extends State<AccountCredentialsScreen> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late bool isEditingPassword;
  @override
  void initState() {
    
    isEditingPassword = false;
    _emailController =
        TextEditingController(text: UserModel().signInAccount.email);
    _passwordController =
        TextEditingController(text: "*******************************");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Credential settings"),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
      ),
      body: Neumorphic(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Neumorphic(
                        style: NeumorphicStyle(
                            boxShape: NeumorphicBoxShape.roundRect(
                                const BorderRadius.vertical(
                                    top: Radius.circular(15),
                                    bottom: Radius.zero))),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Yours e-mail adress"),
                        ),
                      ),
                    ),
                    Neumorphic(
                      style: NeumorphicStyle(depth: -5),
                      child: NeumorphicFormField(
                        enabled: false,
                        defaulText: UserModel().signInAccount.email,
                      ),
                    ),
                    AnimatedOpacity(
                      opacity: isEditingPassword ? 1 : 0,
                      duration: Duration(seconds: 1),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Neumorphic(
                              style: NeumorphicStyle(
                                  boxShape: NeumorphicBoxShape.roundRect(
                                      const BorderRadius.vertical(
                                          top: Radius.circular(15),
                                          bottom: Radius.zero))),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("New address"),
                              ),
                            ),
                          ),
                          Neumorphic(
                            style: NeumorphicStyle(depth: -5),
                            child: NeumorphicFormField(
                              controller: _emailController,
                            ),
                          ),
                        ],
                      ),
                    ),
                    AnimatedSize(
                        duration: Duration(seconds: 1),
                        child: SizedBox(
                          height: isEditingPassword ? 30 : 0,
                        )),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ...List.generate(
                        isEditingPassword ? 2 : 1,
                        (index) => Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: SizedBox.square(
                                dimension: 30,
                                child: NeumorphicFloatingActionButton(
                                  style: NeumorphicStyle(
                                      boxShape: NeumorphicBoxShape.roundRect(
                                          const BorderRadius.vertical(
                                              top: Radius.zero,
                                              bottom: Radius.circular(8)))),
                                  mini: true,
                                  onPressed: () => index == 0
                                      ? setState(() {
                                          isEditingPassword =
                                              !isEditingPassword;
                                        })
                                      : {
                                          UserModel()
                                              .signInAccount
                                              .getIdTokenResult()
                                              .then((value) {
                                            if (value.expirationTime!
                                                .isBefore(DateTime.now())) {
                                              const AlertDialog(
                                                  content: Padding(
                                                padding: EdgeInsets.all(8),
                                                child: Text(
                                                    "To do this operation, in case of your privacy defending, you should sign in again."),
                                              ));
                                            
                                              return;
                                            }
                                            if (RegExp(emailRegex).hasMatch(
                                                _emailController.text)) {
                                              UserModel()
                                                  .signInAccount
                                                  .reload()
                                                  .then((_) => UserModel()
                                                      .signInAccount
                                                      .verifyBeforeUpdateEmail(
                                                          _emailController
                                                              .text))
                                                  .then((value) {
                                                showDialog(
                                                    context: context,
                                                    builder: (ctx) =>
                                                        AlertDialog(
                                                            content: Padding(
                                                          padding:
                                                              EdgeInsets.all(8),
                                                          child: Text(
                                                              "Verification letter was sended on ${_emailController.text}, you should check this, before credentials changing."),
                                                        )));
                                              });
                                            } else
                                              showDialog(
                                                  context: context,
                                                  builder: (ctx) =>
                                                      const AlertDialog(
                                                        content: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  12),
                                                          child: Text(
                                                              "Provided email isnt valid, please try again"),
                                                        ),
                                                      ));
                                          })
                                        },
                                  child: isEditingPassword
                                      ? index == 0
                                          ? Icon(Icons.close)
                                          : Icon(Icons.save)
                                      : Icon(Icons.edit),
                                ),
                              ),
                            )),
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
