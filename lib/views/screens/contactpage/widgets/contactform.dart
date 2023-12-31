import 'package:acounting_max/Provider/CustomerContactPerson.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class contactform extends StatelessWidget {
  const contactform({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'First Name',
            ),
            onChanged: (value) {
              context.read<CustomerContactPersonProvider>().updateFirstName(value);
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'This field is required.';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Last Name',
            ),
             onChanged: (value) {
              context.read<CustomerContactPersonProvider>().updateLastName(value);
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'This field is required.';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Email',
            ),
             onChanged: (value) {
              context.read<CustomerContactPersonProvider>().updateEmail(value);
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'This field is required.';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: "Contact phone",
            ),
             onChanged: (value) {
              context.read<CustomerContactPersonProvider>().updateContactPhone(value);
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'This field is required.';
              }
              return null;
            },
          ),
          DropdownButtonFormField<String>(
            decoration: const InputDecoration(
              labelText: 'Job Role',
            ),
            items: [
              DropdownMenuItem(value: 'consultant', child: Text('Consultant')),
              DropdownMenuItem(value: 'sales Manager', child: Text('sales Manager')),
              DropdownMenuItem(value: 'Key Decision Maker', child: Text('key Decision Maker')),
              DropdownMenuItem(value: 'Delivery Manager', child: Text('Delivery Manager')),
              DropdownMenuItem(value: 'store Manager', child: Text('store Manager')),
              DropdownMenuItem(value: 'Owner', child: Text('Owner')),
              DropdownMenuItem(value: 'CEO', child: Text('CEO')),
            ],
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'This field is required.';
              }
              return null;
            },
             onChanged: (value) {
              context.read<CustomerContactPersonProvider>().updateJoobRole(value!);
            },
          ),
        ],
      ),
    );
  }
}
