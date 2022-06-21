import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/homePage.dart';
import 'package:flutter_application_1/pages/loginPage.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      // for light theme
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      // for dark theme
      darkTheme: ThemeData(brightness: Brightness.dark),

      initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage()
      },
    );
  }
}
