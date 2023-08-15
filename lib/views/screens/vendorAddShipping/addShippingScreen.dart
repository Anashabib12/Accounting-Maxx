import 'package:acounting_max/views/screens/vendorAddShipping/widgets/ShippingAppBar.dart';
import 'package:acounting_max/views/screens/vendorAddShipping/widgets/shippingForm.dart';
import 'package:flutter/material.dart';

class AddShippingScreen extends StatefulWidget {
  const AddShippingScreen({super.key});

  @override
  State<AddShippingScreen> createState() => _AddShippingScreenState();
}

class _AddShippingScreenState extends State<AddShippingScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize
      (
        preferredSize: Size.fromHeight(65),
        child:ShippingAppBar(), 
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ShippingForm(),
              
            ],
          ),
        ),
    );
  }
}