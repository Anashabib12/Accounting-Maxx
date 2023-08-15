import 'package:flutter/material.dart';

class vendorButton extends StatefulWidget {
  final String name;
  final vendorPressFunction;
  const vendorButton({super.key, required this.name, this.vendorPressFunction});

  @override
  State<vendorButton> createState() => _vendorButtonState();
}

class _vendorButtonState extends State<vendorButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 3),
      child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: ElevatedButton(
            onPressed: widget.vendorPressFunction,
            child: Row(
              children: [
                const Icon(Icons.add_circle_outline),
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(widget.name),
                )
              ],
            ),
          )),
    );
  }
}
