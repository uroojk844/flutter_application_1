// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/myroutes.dart';

// ignore: use_key_in_widget_constructors
class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String user = "";
  bool changeBtn = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeBtn = true;
      });
      await Future.delayed(const Duration(milliseconds: 400));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeBtn = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Material(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/hey.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20,
              ),
              Text("Welcome $user",
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold)),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Enter username", labelText: "Username"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Username can not be empty!";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        setState(() {
                          user = value;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: "Enter password", labelText: "Password"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password can not be empty';
                        } else if (value.length < 6) {
                          return 'Password shold be atleat 6 digit';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Material(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(changeBtn ? 25 : 4),
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 350),
                          height: 50,
                          width: changeBtn ? 50 : 150,
                          alignment: Alignment.center,
                          // ignore: sort_child_properties_last
                          child: changeBtn
                              ? const Icon(Icons.done, color: Colors.white)
                              : const Text("Login",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18)),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
