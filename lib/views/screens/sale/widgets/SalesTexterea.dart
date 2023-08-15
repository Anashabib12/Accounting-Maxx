import 'package:flutter/material.dart';

class SaleTexterea extends StatefulWidget {
  const SaleTexterea({super.key});

  @override
  State<SaleTexterea> createState() => _SaleTextereaState();
}

class _SaleTextereaState extends State<SaleTexterea> {
  @override
  Widget build(BuildContext context) {
    String _textValue = ''; // State variable to hold the entered text

    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(15.0),
            alignment: Alignment.centerLeft, // Aligns the child to the left
            child: Text(
              "Sales Description",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey),
              ),
              child: TextFormField(
                maxLines: 5,
                decoration:
                    InputDecoration.collapsed(hintText: 'Sales Description'),
                onChanged: (value) {
                  setState(() {
                    _textValue = value;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
