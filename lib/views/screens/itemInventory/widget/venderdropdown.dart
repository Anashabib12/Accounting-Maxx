import 'package:flutter/material.dart';

class VenderDropDown extends StatefulWidget {
  const VenderDropDown({super.key});

  @override
  State<VenderDropDown> createState() => _VenderDropDownState();
}

class _VenderDropDownState extends State<VenderDropDown> {
  String selectedOption = 'Vendor1'; // Set the initial selected option

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 30.0, left: 15),
          child: const Row(
            children: [
              Text(
                "Preferred Vendor",
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
              items: <String>[
                'Vendor1', // Add 'Vendor1' as a new option
                'Vendor Name', // Keep the existing 'Vendor Name' option
              ].map((String value) {
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
