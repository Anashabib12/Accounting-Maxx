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
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: const Text('New Customer'),
      backgroundColor: const Color(0xFF50C2C9),
      actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: (){

            } ,
          ) 
            
        ],
    );
  }
}
