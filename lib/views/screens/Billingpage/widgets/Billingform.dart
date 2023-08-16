import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Billingform extends StatefulWidget {
  const Billingform({super.key});

  @override
  State<Billingform> createState() => _BillingformState();
}

class _BillingformState extends State<Billingform> {
  List<Widget> _formFields = [];

  @override
  void initState() {
    super.initState();
    _formFields.add(_buildFormField(_formFields.length));
  }

  Widget _buildFormField(int formIndex) {
    return Container(
      color: Colors.grey[200], // Light grey color
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Address 1',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'This field is required.';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Address 2',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'City',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'This field is required.';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'State',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'This field is required.';
              }
              return null;
            },
          ),
          TextFormField(
            keyboardType: TextInputType.phone,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
            decoration: const InputDecoration(
              labelText: 'Zip Code',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'This field is required.';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Country',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'This field is required.';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }

  void _addFormField() {
    setState(() {
      _formFields.add(_buildFormField(_formFields.length));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          for (var form in _formFields) form,
          InkWell(
            onTap: _addFormField,
            child: Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 64, 187, 181),
                borderRadius: BorderRadius.circular(28.0),
              ),
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}





