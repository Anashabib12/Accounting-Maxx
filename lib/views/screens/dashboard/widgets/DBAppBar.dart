import 'package:flutter/material.dart';

class DBAppBar extends StatefulWidget {
  const DBAppBar({super.key});

  @override
  State<DBAppBar> createState() => _DBAppBarState();
}

class _DBAppBarState extends State<DBAppBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          ),
        title: const Text('dashboard'),
        backgroundColor: const Color(0xFF50C2C9),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: (){

            } ,
          ) 
            
        ],
      ),
      
    );
    
  
  }
}