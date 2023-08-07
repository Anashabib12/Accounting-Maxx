import 'package:flutter/material.dart';

class InventoryButtonWidgets extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final inventorypressFunction;
  final String name;

  const InventoryButtonWidgets({super.key, this.inventorypressFunction, required this.name}); //required

  @override
  State<InventoryButtonWidgets> createState() => _InventoryButtonWidgetsState();
}

class _InventoryButtonWidgetsState extends State<InventoryButtonWidgets> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 30,
      width: MediaQuery.of(context).size.width * 0.9,
      child: ElevatedButton(
        onPressed: widget.inventorypressFunction,
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
