import 'package:flutter/material.dart';

class dashboardBody extends StatefulWidget {
  final dashboardPressFunction;
  final String name;
  const dashboardBody({super.key, this.dashboardPressFunction, required this.name});

  @override
  State<dashboardBody> createState() => _dashboardBodyState();
}

class _dashboardBodyState extends State<dashboardBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 3),
      child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: ElevatedButton(
            onPressed: widget.dashboardPressFunction,
            child: Row(
              children: [
                // const Icon(Icons.add_circle_outline),
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