import 'package:acounting_max/Provider/VendorAddbillingProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
              onPressed: () {
                context.read<VenderAddBillingProvider>().vendorAddBillingSave();
              },
            )
          ]),
    );
  }
}
