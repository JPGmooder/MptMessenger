import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:mptmessenger/asset/colors.dart';
import 'package:mptmessenger/asset/strings.dart';
import 'package:mptmessenger/logic/chat_picker/chatpicker_cubit.dart';
import 'package:mptmessenger/logic/firestore/firestore.dart';
import 'package:mptmessenger/logic/router/router_delegate.dart';
import 'package:mptmessenger/model/another_user.dart';
import 'package:mptmessenger/model/chat_model.dart';
import 'package:mptmessenger/model/user_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mptmessenger/view/main%20screen/dialogs/dialog_picker_widget.dart';

class MainScreenSwitcher extends StatelessWidget {
  MainScreenSwitcher(
      {Key? key,
      required this.constraints,
      required this.isWideScreenOrientation,
      required this.controller,
      required this.changeTab})
      : super(key: key);
  BoxConstraints constraints;
  bool isWideScreenOrientation;
  TabController controller;
  IconData Function(int) changeTab;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: isWideScreenOrientation
            ? constraints.maxWidth * 0.05
            : constraints.maxWidth,
        height: isWideScreenOrientation
            ? constraints.maxHeight
            : constraints.maxHeight * 0.06,
        child: Neumorphic(
          style: NeumorphicStyle(
              color: mainAccent,
              boxShape: NeumorphicBoxShape.roundRect(
                  BorderRadius.circular(isWideScreenOrientation ? 30 : 0))),
          child: Flex(
            direction:
                isWideScreenOrientation ? Axis.vertical : Axis.horizontal,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (isWideScreenOrientation)
                Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CachedNetworkImage(
                      imageUrl: UserModel().photo,
                      fit: BoxFit.fill,
                      imageBuilder: (ctx, image) => ClipRRect(
                        borderRadius: BorderRadius.circular(360),
                        child: Neumorphic(
                          padding: const EdgeInsets.all(3),
                          child: ClipRRect(
                            child: Image(image: image),
                            borderRadius: BorderRadius.circular(360),
                          ),
                          style: NeumorphicStyle(
                              depth: -10,
                              color: mainAccent,
                              shape: NeumorphicShape.convex),
                        ),
                      ),
                    ),
                  ),
                ),
              Expanded(
                flex: 4,
                child: RotatedBox(
                  quarterTurns: isWideScreenOrientation ? -1 : 2,
                  child: TabBar(
                    isScrollable: false,
                    onTap: changeTab,
                    controller: controller,
                    indicatorColor: accentColor,
                    indicatorWeight: 4,
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: List.generate(
                        2,
                        (index) => Neumorphic(
                              style: NeumorphicStyle(
                                  boxShape: NeumorphicBoxShape.rect(),
                                  depth: index == controller.index ? -3 : 0,
                                  color: accentColor.withAlpha(
                                      index == controller.index ? 50 : 0)),
                              child: Center(
                                child: RotatedBox(
                                  quarterTurns: isWideScreenOrientation ? 1 : 2,
                                  child: SizedBox(
                                    width: 30,
                                    height: 30,
                                    child: FittedBox(
                                      fit: BoxFit.fill,
                                      child: Icon(
                                        changeTab(index),
                                        color: NeumorphicColors.background,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )),
                  ),
                ),
              ),
              if (isWideScreenOrientation)
                Spacer(
                  flex: 2,
                ),
              if (isWideScreenOrientation)
                RotatedBox(
                  child: SizedBox(
                    width: 30,
                    height: 30,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: IconButton(
                        icon: FittedBox(
                            fit: BoxFit.fill,
                            child: Icon(
                              Icons.exit_to_app,
                              color: accentColor,
                            )),
                        onPressed: () {
                          Get.find<DelegateRouter>().pushPage(name: "/auth");
                        },
                      ),
                    ),
                  ),
                  quarterTurns: 2,
                )
            ],
          ),
        ),
      ),
    );
  }
}
