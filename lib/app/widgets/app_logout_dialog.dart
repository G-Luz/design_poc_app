import 'package:design_poc/app/constants/app_colors.dart';
import 'package:design_poc/app/routes.dart';
import 'package:design_poc/app/widgets/app_button.dart';
import 'package:design_poc/app/widgets/app_text.dart';
import 'package:flutter/material.dart';

class AppDialog {
  static void show(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          // title:
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppText(
                text: "Tem a certeza que quer sair?",
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              Container(
                  margin: const EdgeInsets.only(top: 30, bottom: 10),
                  child: SizedBox(
                    width: 150,
                    height: 44,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all<double>(0),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.transparent),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                          ),
                        ),
                        // padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        //     EdgeInsets.symmetric(vertical: 10)),
                      ),
                      child: AppText(
                        text: 'Sim',
                        fontColor: Colors.grey,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )),
              AppButton(
                  label: 'Não',
                  labelColor: Colors.white,
                  onPressedCallback: () {
                    Navigator.pop(context);
                  },
                  backgroundButton: AppColors.mainRed,
                  isEnable: true),
              const SizedBox(height: 20)
            ],
          ),
        );
      },
    );
  }
}
