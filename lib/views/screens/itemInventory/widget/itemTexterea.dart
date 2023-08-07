import 'package:flutter/material.dart';

class ItemTextereaWidgets extends StatefulWidget {
  const ItemTextereaWidgets({Key? key}) : super(key: key);

  @override
  State<ItemTextereaWidgets> createState() => _ItemTextereaWidgetsState();
}

class _ItemTextereaWidgetsState extends State<ItemTextereaWidgets> {
  String _textValue = ''; // State variable to hold the entered text

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: [
         Container(
      margin: const EdgeInsets.all(15.0),
      alignment: Alignment.centerLeft, // Aligns the child to the left
      child: Text(
        "Purchasing Description",
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
                    InputDecoration.collapsed(hintText: 'Enter your text'),
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
