import 'package:design_poc/app/constants/app_colors.dart';
import 'package:design_poc/app/widgets/app_text.dart';
import 'package:flutter/material.dart';

class AppLoginTextField extends StatelessWidget {
  String labelName;
  TextEditingController controller;
  TextInputType inputType;
  bool obscureText;
  Widget suffixIcon;

  AppLoginTextField(
      {Key? key,
      required this.labelName,
      required this.controller,
      this.inputType = TextInputType.text,
        this.obscureText = false,
      suffixIcon})
      : suffixIcon = suffixIcon ??
            Container(
              width: 0,
            ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: const EdgeInsets.only(bottom: 8, top: 33),
            child: AppText(
                text: labelName,
                fontColor: AppColors.mainColorGrey1,
                fontSize: 14)),
        Container(
          height: 54,
          decoration: BoxDecoration(
              // color: AppColors.textFieldColor,
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(6)),
          alignment: Alignment.center,
          child: TextField(
            controller: controller,
            cursorColor: Colors.teal,
            keyboardType: inputType,
            obscureText: obscureText,

            decoration: InputDecoration(
              border: InputBorder.none,
              suffixIcon: suffixIcon,
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: AppColors.supportingRed, width: 1),
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
