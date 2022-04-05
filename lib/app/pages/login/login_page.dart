import 'package:design_poc/app/constants/app_colors.dart';
import 'package:design_poc/app/pages/login/widgets/app_login_textfield.dart';
import 'package:design_poc/app/routes.dart';
import 'package:design_poc/app/widgets/app_button.dart';
import 'package:design_poc/app/widgets/app_text.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool hidePassword = true;
  bool enableButton = false;

  @override
  void initState() {
    super.initState();
    _emailController.addListener(() => {checkFieldsForEnableButton()});
    _passwordController.addListener(() => {checkFieldsForEnableButton()});
  }

  checkFieldsForEnableButton() {
    setState(() {
      if (_emailController.text.isNotEmpty &&
          _passwordController.text.isNotEmpty) {
        enableButton = true;
      } else {
        enableButton = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 60),
                    child: Image.asset("assets/images/ic_logo.png")),
                AppText(
                    text: 'Bem vindo/a',
                    fontColor: AppColors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 26),
                const SizedBox(height: 11),
                AppText(
                    text: 'Por favor coloque seus dados',
                    fontColor: AppColors.mainColorGrey1,
                    fontSize: 18),
                AppLoginTextField(
                    labelName: 'Email',
                    controller: _emailController,
                    inputType: TextInputType.emailAddress),
                AppLoginTextField(
                    labelName: 'Password',
                    controller: _passwordController,
                    obscureText: hidePassword,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (hidePassword) {
                            hidePassword = false;
                          } else {
                            hidePassword = true;
                          }
                        });
                      },
                      icon: Icon(
                          hidePassword
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: Colors.grey),
                    )),
                const SizedBox(height: 35),
                AppButton(
                  isEnable: enableButton,
                  label: 'Entrar',
                  onPressedCallback: () {
                    Navigator.pushNamed(context, Routes.home);
                  },
                  backgroundButton: AppColors.mainRed,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
