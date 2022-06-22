import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/homePage.dart';
import 'package:flutter_application_1/pages/loginPage.dart';
import 'package:flutter_application_1/utils/myroutes.dart';
import 'package:flutter_application_1/widget/themes.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      // for light theme
      theme: MyTheme.lightTheme(context),
      // for dark theme
      darkTheme: MyTheme.darkTheme(context),
      routes: {
        "/": (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage()
      },
    );
  }
}
