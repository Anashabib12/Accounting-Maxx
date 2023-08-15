import 'package:flutter/material.dart';

class ShippingAppbar extends StatelessWidget {
  const ShippingAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: AppBar(
        title: const Text ('Shipping Address'),
        backgroundColor: const Color.fromARGB(205, 5, 136, 141)
    
      ),
    );
  }
}