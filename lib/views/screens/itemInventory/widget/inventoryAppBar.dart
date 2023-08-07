import 'package:flutter/material.dart';

class ItemInventoryAppBar extends StatefulWidget {
  const ItemInventoryAppBar({super.key});

  @override
  State<ItemInventoryAppBar> createState() => _ItemInventoryAppBarState();
}

class _ItemInventoryAppBarState extends State<ItemInventoryAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.arrow_back),
      title: const Text('  Inventory System'),
      // name: Text('My App'),
      backgroundColor: Color.fromARGB(205, 203, 238,
          239), // Change this color to customize the app bar background color
    );;
  }
}