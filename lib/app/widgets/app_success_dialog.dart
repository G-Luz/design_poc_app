import 'package:design_poc/app/widgets/app_text.dart';
import 'package:flutter/material.dart';

class AppSucessDialog {
  static void show(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          // backgroundColor: const Color(0xff2d2d2d),
          title: AppText(text: "Contato criado com sucesso!", fontSize: 17, fontWeight: FontWeight.bold,),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppText(
                  text: "A informação foi enviada para validação.",
                  textAlign: TextAlign.center,
                  fontSize: 13,
                  fontColor: Colors.grey),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: (){
                },
                child: Icon(Icons.check_circle_outline_rounded, size: 75, color: Colors.green,)
              ),
            ],
          ),
        );
      },
    );
  }
}
