import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppBarwidgets extends StatefulWidget {
  const AppBarwidgets({super.key});

  @override
  State<AppBarwidgets> createState() => _AppBarwidgetsState();
}

class _AppBarwidgetsState extends State<AppBarwidgets> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
    
      
      // leading: Icon(Icons.arrow_back),
      title: const Text('  New Items'),
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