import 'package:flutter/material.dart';

class AppActions extends StatelessWidget {
  String iconPath;
  Function onTapCallback;

  AppActions({required this.iconPath, required this.onTapCallback});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(child: Image.asset(iconPath, height: 70,));
  }
}
