import 'package:design_poc/app/widgets/app_text.dart';
import 'package:flutter/material.dart';

class AppBottomButton extends StatelessWidget {
  String buttonText;
  String iconPath;

  AppBottomButton({required this.buttonText, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        onPressed: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              iconPath,
              height: 24,
              width: 24,
            ),
            AppText(
              text: buttonText,
              fontSize: 13,
              fontWeight: FontWeight.w700,
            )
          ],
        ),
        style: ButtonStyle(
          elevation: MaterialStateProperty.all<double>(0),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ),
      ),
    );
  }
}
