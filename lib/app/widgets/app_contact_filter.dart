import 'package:design_poc/app/constants/app_colors.dart';
import 'package:design_poc/app/widgets/app_text.dart';
import 'package:flutter/material.dart';

class AppContactFilter extends StatelessWidget {
  bool allContacts;
  Function changeFilterCallback;

  AppContactFilter(
      {Key? key, required this.changeFilterCallback, required this.allContacts})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        changeFilterCallback();
      },
      child: Row(
        children: [
          Container(
            width: 45,
            height: 35,
            decoration: BoxDecoration(
              color: allContacts ? AppColors.mainRed : Colors.transparent,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Center(
                child: AppText(
              text: 'Todos',
              fontSize: 12,
              fontColor: allContacts ? Colors.white : Colors.grey,
              fontWeight: FontWeight.w500,
            )),
          ),
          Container(
            width: 45,
            height: 35,
            decoration: BoxDecoration(
              color: !allContacts ? AppColors.mainRed : Colors.transparent,
              // border: Border.all(color: Colors.teal),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Center(
                child: AppText(
              text: 'Meus',
              fontSize: 12,
              fontColor: !allContacts ? Colors.white : Colors.grey,
            )),
          ),
        ],
      ),
    );
  }
}
