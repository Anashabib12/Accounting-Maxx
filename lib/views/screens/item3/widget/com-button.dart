import 'package:flutter/material.dart';

class CommunicationButton extends StatefulWidget {
  const CommunicationButton({Key? key}) : super(key: key);

  @override
  State<CommunicationButton> createState() => _CommunicationButtonState();
}

class _CommunicationButtonState extends State<CommunicationButton> {
  TextEditingController textController = TextEditingController();
  bool showTextArea = false;
  bool showwTextArea = false;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft, // Align the button to the left
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    showTextArea = !showTextArea;
                  });
                },
                child: Text('Add Task'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    showwTextArea = !showwTextArea;
                  });
                },
                child: Text('log Task'),
              ),
            ],
          ),
          // 1st button
          SizedBox(width: 16),
          Visibility(
            visible: showTextArea,
            child: TextField(
              controller: textController,
              decoration: InputDecoration(
                hintText: 'Type your text here...',
                border: OutlineInputBorder(),
              ),
              maxLines: 4,
            ),
          ),
          // 2nd button
          SizedBox(width: 16),
          Visibility(
            visible: showwTextArea,
            child: TextField(
              controller: textController,
              decoration: InputDecoration(
                hintText: 'Log task',
                border: OutlineInputBorder(),
              ),
              maxLines: 4,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // Clean up the TextEditingController when the widget is disposed.
    textController.dispose();
    super.dispose();
  }
}
