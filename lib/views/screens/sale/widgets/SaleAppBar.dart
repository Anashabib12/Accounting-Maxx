import 'package:flutter/material.dart';

class SaleAppBar extends StatefulWidget {
  const SaleAppBar({super.key});

  @override
  State<SaleAppBar> createState() => _SaleAppBarState();
}

class _SaleAppBarState extends State<SaleAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      // leading: Icon(Icons.arrow_back),
      title: const Text('  sales'),
      // name: Text('My App'),
        backgroundColor: const Color(0xFF50C2C9),
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
