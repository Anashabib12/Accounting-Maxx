import 'package:flutter/material.dart';

class SaleDropdown extends StatefulWidget {
  const SaleDropdown({super.key});

  @override
  State<SaleDropdown> createState() => _SaleDropdownState();
}

class _SaleDropdownState extends State<SaleDropdown> {
  String selectedOption = 'Avarage'; // Set the initial selected option
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 30.0, left: 15),
          child: const Row(
            children: [
              Text(
                "Sales Costing Method",
                style: TextStyle(
                  fontSize: 18, // Set the font size here
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20.0),
          child: FractionallySizedBox(
            widthFactor: 0.9, // Set the width factor to 90% of the screen
            child: DropdownButton<String>(
              value: selectedOption,
              onChanged: (String? newValue) {
                setState(() {
                  selectedOption = newValue!;
                });
              },
              items: <String>['Avarage', 'FIFO'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
