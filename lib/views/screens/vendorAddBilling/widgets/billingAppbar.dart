import 'package:flutter/material.dart';

class BillingAppBar extends StatefulWidget {
  const BillingAppBar({super.key});

  @override
  State<BillingAppBar> createState() => _BillingAppBarState();
}

class _BillingAppBarState extends State<BillingAppBar> {
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
        title: const Text('Billing Address'),
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