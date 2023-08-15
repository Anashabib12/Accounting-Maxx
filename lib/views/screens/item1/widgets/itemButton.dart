import 'package:flutter/material.dart';

class ItemButtonWidgets extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final pressFunction;
  final String name;

  const ItemButtonWidgets({super.key, this.pressFunction, required this.name}); //required

  @override
  State<ItemButtonWidgets> createState() => _ItemButtonWidgetsState();
}

class _ItemButtonWidgetsState extends State<ItemButtonWidgets> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: ElevatedButton(
        onPressed: widget.pressFunction,
        // onPressed: ()=>{

        // },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(Icons.add_circle_outline),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(widget.name),
            ),
          ],
        ),
      ),
    );
  }
}
