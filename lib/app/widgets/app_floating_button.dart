import 'package:design_poc/app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppFloatingButton extends StatelessWidget {

  Function onPressedCallback;

   AppFloatingButton({Key? key, required this.onPressedCallback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        onPressedCallback();
      },
      backgroundColor: Colors.transparent,
      elevation: 0,
      child: const Icon(Icons.add, color: AppColors.mainRed),
      shape: const StadiumBorder(
          side: BorderSide(
              color: AppColors.mainRed, width: 2)),
    );
  }
}
