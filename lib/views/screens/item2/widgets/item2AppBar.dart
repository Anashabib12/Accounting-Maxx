import 'package:flutter/material.dart';

class Item2AppBar extends StatefulWidget {
  const Item2AppBar({super.key});

  @override
  State<Item2AppBar> createState() => _Item2AppBarState();
}

class _Item2AppBarState extends State<Item2AppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.arrow_back),
      title: const Text('  Accounts'),
      // name: Text('My App'),
      backgroundColor: Color.fromARGB(205, 203, 238,
          239), // Change this color to customize the app bar background color
    );
  }
}