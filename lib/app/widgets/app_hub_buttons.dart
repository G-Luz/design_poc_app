import 'package:design_poc/app/widgets/app_text.dart';
import 'package:flutter/material.dart';

class AppHubButtons extends StatelessWidget {
  String label;
  String iconPath;
  Function onPressedCallback;

  AppHubButtons(
      {required this.label,
      required this.iconPath,
      required this.onPressedCallback});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ElevatedButton(
          onPressed: () {
            onPressedCallback();
          },
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            elevation: MaterialStateProperty.all<double>(0),
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.grey.shade200),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
            ),
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                EdgeInsets.symmetric(vertical: 40)),
          ),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(iconPath, height: 25, width: 25),
              Container(
                height: 30,
                margin: EdgeInsets.symmetric(vertical: 18),
                child: AppText(
                  text: label,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
