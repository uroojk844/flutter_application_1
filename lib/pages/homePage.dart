import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/catalogue.dart';
import 'package:flutter_application_1/widget/drawer.dart';
import 'package:flutter_application_1/widget/itemWidget.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 24;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogueData =
        await rootBundle.loadString("assets/files/catalogue.json");
    var decodeData = jsonDecode(catalogueData);
    var productData = decodeData["products"];
    setState(() {
      CatalogueModel.items = List.from(productData)
          .map<Item>((item) => Item.fromMap(item))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalogue App"),
      ),
      body: Center(
          child: ListView.builder(
        itemCount: CatalogueModel.items.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: CatalogueModel.items[index],
          );
        },
      )),
      drawer: const MyDrawer(),
    );
  }
}
