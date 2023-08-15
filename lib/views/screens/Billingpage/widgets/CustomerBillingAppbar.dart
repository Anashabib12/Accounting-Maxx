import 'package:flutter/material.dart';

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
        backgroundColor: const Color.fromARGB(205, 5, 136, 141)
    
      ),
    );
  }
}