import 'package:design_poc/app/constants/app_colors.dart';
import 'package:design_poc/app/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AppButton extends StatelessWidget {
  String label;
  Color labelColor;
  Function onPressedCallback;
  Color backgroundButton;
  bool isEnable;

  AppButton(
      {required this.label,
      this.labelColor = Colors.white,
      required this.onPressedCallback,
      required this.backgroundButton,
      required this.isEnable});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 44,
      child: ElevatedButton(
        onPressed: isEnable ? () => onPressedCallback() : null,
        style: ButtonStyle(
          elevation: MaterialStateProperty.all<double>(0),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor: MaterialStateProperty.all<Color>(
              isEnable ? AppColors.mainRed : AppColors.supportingRed),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(6)),
            ),
          ),
          // padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          //     EdgeInsets.symmetric(vertical: 10)),
        ),
        child: AppText(
          text: label,
          fontColor: labelColor,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
