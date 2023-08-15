import 'package:flutter/material.dart';

class SystemAppBar extends StatefulWidget {
  const SystemAppBar({super.key});

  @override
  State<SystemAppBar> createState() => _SystemAppBarState();
}

class _SystemAppBarState extends State<SystemAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        // leading: Icon(Icons.arrow_back),
        title: const Text("System Information"),
        backgroundColor: Color.fromARGB(205, 203, 238, 239),
        actions: [
        TextButton(
          onPressed: () {
            // Implement your save functionality here
          },
          child: const Text(
            'Save',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ],
        );
  }
}
