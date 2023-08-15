import 'package:acounting_max/views/screens/vendorAddBilling/widgets/billingAppbar.dart';
import 'package:acounting_max/views/screens/vendorAddBilling/widgets/vendorBillingForm.dart';
import 'package:flutter/material.dart';

class vendorAddBillingScreen extends StatefulWidget {
  const vendorAddBillingScreen({super.key});

  @override
  State<vendorAddBillingScreen> createState() => _vendorAddBillingScreenState();
}

class _vendorAddBillingScreenState extends State<vendorAddBillingScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: BillingAppBar(),
      ),
      body: SingleChildScrollView(
        child: BillingForm()
        ),
    );
  }
}
