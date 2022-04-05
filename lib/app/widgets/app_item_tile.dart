import 'package:design_poc/app/widgets/app_logout_dialog.dart';
import 'package:design_poc/app/widgets/app_text.dart';
import 'package:flutter/material.dart';

class AppItemTile extends StatelessWidget {
  String iconPath;
  String text;
  Function onTapCallback;

  AppItemTile(
      {required this.iconPath,
      required this.text,
      required this.onTapCallback});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 15),
      child: ListTile(
        title: Row(
          children: [
            Image.asset(iconPath, width: 22, height: 22),
            const SizedBox(width: 10),
            AppText(
              text: text,
              fontWeight: FontWeight.w400,
              fontSize: 18,
            )
          ],
        ),
        onTap: () {
          onTapCallback();
        },
      ),
    );
  }
}
