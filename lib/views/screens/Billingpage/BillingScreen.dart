// ignore: file_names
import 'package:acounting_max/views/screens/Billingpage/widgets/Billingform.dart';
import 'package:acounting_max/views/screens/Billingpage/widgets/CustomerBillingAppbar.dart';
import 'package:flutter/material.dart';

class BillingScreen extends StatefulWidget {
  const BillingScreen({super.key});

  @override
  State<BillingScreen> createState() => _BillingScreenState();
}

class _BillingScreenState extends State<BillingScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize
      (
      preferredSize: Size.fromHeight(65),
      child: CustomerBillingAppbar(),
      ),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
             Billingform(),
          ],
        ),
      ),
      
    );
  }
}