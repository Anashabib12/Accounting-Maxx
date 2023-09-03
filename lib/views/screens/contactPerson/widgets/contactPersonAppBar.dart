import 'package:acounting_max/Provider/VendorContactPerson.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class contactPersonAppBar extends StatefulWidget {
  const contactPersonAppBar({super.key});

  @override
  State<contactPersonAppBar> createState() => _contactPersonAppBarState();
}

class _contactPersonAppBarState extends State<contactPersonAppBar> {
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
          title: const Text('Contact Person'),
          backgroundColor: const Color(0xFF50C2C9),
          actions: [
            IconButton(
              icon: const Icon(Icons.save),
              onPressed: () {
                context.read<VenderContactPersonProvider>().vendorContactPersonSave();
              },
            )
          ]),
    );
  }
}
