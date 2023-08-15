import 'package:flutter/material.dart';

class ShippingAppBar extends StatefulWidget {
  const ShippingAppBar({super.key});

  @override
  State<ShippingAppBar> createState() => _ShippingAppBarState();
}

class _ShippingAppBarState extends State<ShippingAppBar> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          ),
        title: const Text('Shipping Address'),
        backgroundColor: const Color(0xFF50C2C9),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: (){

            } ,
          ) 
        ]
      ),
    );
  }
}
  
