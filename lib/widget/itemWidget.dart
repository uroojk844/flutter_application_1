import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalogue.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        child: ListTile(
          leading: Image.network(item.image),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trailing: Text(
            "\$${item.price.toString()}",
            textScaleFactor: 1.5,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.deepPurple),
          ),
        ),
      ),
    );
  }
}
