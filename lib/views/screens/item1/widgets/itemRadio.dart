import 'package:flutter/material.dart';

class itemRadioWidgets extends StatefulWidget {
  const itemRadioWidgets({super.key});

  @override
  State<itemRadioWidgets> createState() => _itemRadioWidgetsState();
}

class _itemRadioWidgetsState extends State<itemRadioWidgets> {
  String selectedOption = 'Option 1';
  @override
  Widget build(BuildContext context) {
    return Container(
       margin: EdgeInsets.only(top: 20.0),
      child: Row(
        children: [
          Expanded(
            child: RadioListTile(
              title: Text('Active'),
              value: 'Active',
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value.toString();
                });
              },
            ),
          ),
          Expanded(
            child: RadioListTile(
              title: Text('Inactive'),
              value: 'Inactive',
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value.toString();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
