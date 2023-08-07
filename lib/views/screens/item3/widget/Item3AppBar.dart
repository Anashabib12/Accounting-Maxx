import 'package:flutter/material.dart';

class AppBar3 extends StatefulWidget {
  const AppBar3({super.key});

  @override
  State<AppBar3> createState() => _AppBar3State();
}

class _AppBar3State extends State<AppBar3> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.arrow_back),
      title: const Text('  Comunication'),
      // name: Text('My App'),
      backgroundColor: Color.fromARGB(205, 203, 238,
          239), // Change this color to customize the app bar background color
    );
  }
}