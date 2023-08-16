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
      // leading: Icon(Icons.arrow_back),
      title: const Text('  Comunication'),
      // name: Text('My App'),
              backgroundColor: const Color(0xFF50C2C9),
 // Change this color to customize the app bar background color
           actions: [
             IconButton(
            icon: const Icon(Icons.save),
            tooltip: 'Comment Icon',
            onPressed: () {},
          ), //IconButton
            // Text(
            // "Save",
            // style: TextStyle(
            //     // fontSize: MediaQuery.of(context).size.width * 0.6,
            //     // fontWeight: FontWeight.bold,
            //     ),
          // ),
          ]
    );
  }
}