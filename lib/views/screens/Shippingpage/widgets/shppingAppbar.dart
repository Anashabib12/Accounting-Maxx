import 'package:acounting_max/Provider/CustomerAddShipping.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShippingAppbar extends StatelessWidget {
  const ShippingAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: AppBar(
        title: const Text ('Shipping Address'),
        backgroundColor: const Color(0xFF50C2C9),
    actions: [
            IconButton(
              icon: const Icon(Icons.save),
              onPressed: () {
                context
                    .read<CustomerAddShippingProvider>()
                    .CustomerAddShippingSave();
              },
            )
          ]
      ),
    );
  }
}