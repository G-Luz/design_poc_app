import 'package:design_poc/app/widgets/app_text.dart';
import 'package:flutter/material.dart';

class AppAddNewField extends StatelessWidget {
  String addFieldText;
  Function addNewFieldCallback;

  AppAddNewField(
      {required this.addFieldText, required this.addNewFieldCallback});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        addNewFieldCallback();
      },
      child: Row(
        children: [
          Icon(Icons.add, size: 20, color: Colors.grey.shade400),
          AppText(text: addFieldText, fontColor: Colors.grey.shade400)
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
    );
  }
}
