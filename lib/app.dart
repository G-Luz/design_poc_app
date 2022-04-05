import 'package:design_poc/app/constants/app_colors.dart';
import 'package:design_poc/app/pages/login/login_page.dart';
import 'package:design_poc/app/routes.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI material design POC',
      theme: ThemeData(
          primarySwatch: Colors.red,
          brightness: Brightness.light),
      initialRoute: Routes.initialRoute,
      routes: Routes.routes,
    );
  }
}
