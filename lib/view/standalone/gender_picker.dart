import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:mptmessenger/asset/colors.dart';
import 'package:mptmessenger/asset/strings.dart';

class GenderPickerWIdget extends StatefulWidget {
  GenderPickerWIdget(
      {Key? key, required this.changeValue, required this.constraints})
      : super(key: key);
  BoxConstraints constraints;
  int Function(int) changeValue;

  @override
  State<GenderPickerWIdget> createState() => _GenderPickerWIdgetState();
}

class _GenderPickerWIdgetState extends State<GenderPickerWIdget> {
  late int groupValue;

  @override
  void initState() {
    groupValue = 3;
    print(widget.constraints.maxHeight);
    print(widget.constraints.maxWidth);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Pick your gender",
          style: TextStyle(
              color: mainAccent,
              fontFamily: mainFontFamaly,
              fontSize: widget.constraints.maxWidth > 500 ? 20 : 15),
        ),
        SizedBox(
          height: 10,
        ),
        Wrap(children: [
          ...List.generate(
              4,
              (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: kIsWeb
                          ? widget.constraints.maxWidth * 0.06
                          : widget.constraints.maxWidth * 0.06, //* Размер на телефоне
                      height: 30,
                      child: NeumorphicRadio<int>(
                        child: Icon(
                          index == 0
                              ? Icons.male
                              : index == 1
                                  ? Icons.female
                                  : index == 2
                                      ? Icons.people_outline_sharp
                                      : Icons.no_accounts,
                          color: mainAccent,
                        ),
                        value: index,
                        groupValue: groupValue,
                        onChanged: (value) {
                          setState(() {
                            groupValue = value ?? groupValue;
                          });
                          widget.changeValue(groupValue);
                        },
                      ),
                    ),
                  )).toList(),
        ])
      ],
    );
  }
}
