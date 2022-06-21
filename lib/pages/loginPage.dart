import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Material(
        child: const Center(
            child: Text(
      "Login page",
      style: TextStyle(
          fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),
    )));
  }
}
