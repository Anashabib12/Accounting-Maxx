
import 'package:flutter/material.dart';

class CompanyButton extends StatefulWidget {
  final String name;
  final CompanyPressFunction;
  const CompanyButton({super.key, required this.name, this.CompanyPressFunction, required Color backgroundColor});

  @override
  State<CompanyButton> createState() => _CompanyButtonState();
}

class _CompanyButtonState extends State<CompanyButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: ElevatedButton(
            onPressed: widget.CompanyPressFunction,
            child: Row(
              children: [
                const Icon(Icons.add_circle_outline),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(widget.name),
                )
              ],
            ),
          )),
    );
  }
}