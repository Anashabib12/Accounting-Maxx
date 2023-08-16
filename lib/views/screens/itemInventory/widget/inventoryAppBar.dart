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
      // leading: Icon(Icons.arrow_back),
      title: const Text('  Purchase'),
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