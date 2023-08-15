import 'package:acounting_max/views/screens/Shippingpage/widgets/shippingform.dart';
import 'package:acounting_max/views/screens/Shippingpage/widgets/shppingAppbar.dart';
import 'package:flutter/material.dart';

class shippingscreen extends StatelessWidget {
  const shippingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize
      (
      preferredSize: Size.fromHeight(65),
      child: ShippingAppbar(),
      ),
       body: SingleChildScrollView(
         child: Column(
          children: [
             shippingform()
          ]
        ),
       ),
    );
  }
}