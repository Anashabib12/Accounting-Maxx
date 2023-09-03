import 'package:acounting_max/Provider/CustomerAddBilling.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomerBillingAppbar extends StatefulWidget {
  const CustomerBillingAppbar({super.key});

  @override
  State<CustomerBillingAppbar> createState() => _CustomerBillingappbarWidgetState();
}

class _CustomerBillingappbarWidgetState extends State<CustomerBillingAppbar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
      
        title: const Text ('Billing Address'),
        backgroundColor: const Color(0xFF50C2C9),
        actions: [
        IconButton(
          icon: const Icon(Icons.save),
          onPressed: () {
            context.read<CustomerAddBillingProvider>().CustomerAddBillingSave();
          },
        )
      ],
    
      ),
    );
  }
}