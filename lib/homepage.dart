import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 24;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalogue App"),
      ),
      body: Center(
        child: Text("Hello $days days flutter tutorial"),
      ),
      drawer: const Drawer(),
    );
  }
}
