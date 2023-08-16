import 'package:flutter/material.dart';

class AppbarWidget extends StatefulWidget {
  const AppbarWidget({super.key});

  @override
  State<AppbarWidget> createState() => _AppbarWidgetState();
}

class _AppbarWidgetState extends State<AppbarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.arrow_back),
      title: const Text('New Customer'),
      backgroundColor: const Color.fromARGB(205, 5, 136, 141),
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
