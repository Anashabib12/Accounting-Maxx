import 'package:acounting_max/Provider/CustomerContactPerson.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class contactAppbar extends StatelessWidget {
  const contactAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
         

        title: const Text ('Contact person'),
        backgroundColor: const Color(0xFF50C2C9),
     actions: [
        IconButton(
          icon: const Icon(Icons.save),
          onPressed: () {
            context.read<CustomerContactPersonProvider>().CustomerContactPersonSave();
          },
        )
      ],
      ),
    );
  }
}