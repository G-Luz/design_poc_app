import 'package:flutter/material.dart';

class AppTextfield extends StatelessWidget {
  String labelName;
  Widget suffixIcon;
  bool isEnable;
  int maxLines;
  TextEditingController controller;
  VoidCallback onTapTextField;

  AppTextfield(
      {required this.labelName,
      required this.controller,
      this.isEnable = true,
      this.maxLines = 1,
      required this.onTapTextField,

        suffixIcon})
      : suffixIcon = suffixIcon ??
            Container(
              width: 0,
            );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: TextField(
        controller: controller,
        enabled: isEnable,
        maxLines: maxLines,
        cursorColor: Colors.teal,
        onTap: onTapTextField,
        decoration: InputDecoration(
          labelText: labelName,
          labelStyle: const TextStyle(fontSize: 13),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
