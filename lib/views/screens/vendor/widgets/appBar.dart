import 'package:flutter/material.dart';

class VendorAppbar extends StatefulWidget {
  const VendorAppbar({super.key});

  @override
  State<VendorAppbar> createState() => _VendorAppbarState();
}

class _VendorAppbarState extends State<VendorAppbar> {
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
        title: const Text('New Vendor'),
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
