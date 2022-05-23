import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:mptmessenger/asset/colors.dart';
import 'package:mptmessenger/asset/strings.dart';
import 'package:mptmessenger/asset/textstyles.dart';
import 'package:mptmessenger/main.dart';

class NeumorphicFormField extends TextFormField {
  NeumorphicFormField(
      {String? hintText,
      IconData? icon,
      bool needObscure = false,
      bool enabled = true,
      double borderRaduis = 10,
      String? defaulText,
      TextEditingController? controller,
      FocusNode? focus,
      TextInputType? keyboardType,
      void Function()? onEditingComplete,
      void Function(String)? onChanged,
      String? Function(String?)? validator})
      : super(
          controller: controller,
          keyboardType: keyboardType,
          focusNode: focus,
          enabled: enabled,
          onEditingComplete: onEditingComplete,
          onChanged: onChanged,
          initialValue:  defaulText,
          obscureText: needObscure,
          validator: validator,
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle: mainStyle.copyWith(fontSize: 16, color: Colors.black),
              prefixIcon: Icon(icon),
              errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red[100]!),
                  borderRadius:
                      BorderRadius.all(Radius.circular(borderRaduis))),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: mainAccent),
                  borderRadius:
                      BorderRadius.all(Radius.circular(borderRaduis))),
              enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: NeumorphicColors.background),
                  borderRadius:
                      BorderRadius.all(Radius.circular(borderRaduis)))),
          cursorColor: mainAccent,
          style: mainStyle,
        );
}
