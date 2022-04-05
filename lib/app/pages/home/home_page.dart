import 'package:design_poc/app/routes.dart';
import 'package:design_poc/app/widgets/app_action_bar.dart';
import 'package:design_poc/app/widgets/app_drawer.dart';
import 'package:design_poc/app/widgets/app_hub_buttons.dart';
import 'package:design_poc/app/widgets/app_logout_dialog.dart';
import 'package:design_poc/app/widgets/app_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppActionBar(scaffoldKey: _scaffoldKey),
      endDrawer: const AppDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 37),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText(
                      text: 'Olá Usuário',
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                    Image.asset(
                      'assets/images/ic_notifications.png',
                      width: 25,
                      height: 25,
                    )
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppHubButtons(
                        label: 'Contactos',
                        iconPath: 'assets/images/ic_contacts.png',
                        onPressedCallback: (){
                          Navigator.pushNamed(context, Routes.contacts);
                        }),
                    const SizedBox(width: 25),
                    AppHubButtons(
                        label: 'Conflitos de interesse',
                        iconPath: 'assets/images/ic_ci.png',
                        onPressedCallback: (){}),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
