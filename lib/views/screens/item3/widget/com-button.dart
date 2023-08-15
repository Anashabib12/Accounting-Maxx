import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CommunicationButton extends StatefulWidget {
  const CommunicationButton({Key? key}) : super(key: key);

  @override
  State<CommunicationButton> createState() => _CommunicationButtonState();
}

class Task {
  final String title;
  final String log;
  final DateTime createdAt;

  Task(this.title, this.log, this.createdAt);
}

class _CommunicationButtonState extends State<CommunicationButton> {
  TextEditingController textController1 = TextEditingController();
  TextEditingController textController2 = TextEditingController();
  TextEditingController textController3 = TextEditingController();
  TextEditingController textController4 = TextEditingController();
  TextEditingController textController5 = TextEditingController();
  TextEditingController textController6 = TextEditingController();

  List<Task> tasks = [];
  // 1st button row
  bool showTextArea = false;
  bool showwTextArea = false;
  bool showwwTextArea = false;
  // 2nd button row
  bool show4TextArea = false;
  bool show5TextArea = false;
  bool show6TextArea = false;

  int selectedIndex = 0;
  int selectedIndex1 = 0;

  // void _handleSaveAndLog() {
  //   if (selectedIndex == 0) {
  //     setState(() {
  //       textController2.text = textController1.text;
  //     });
  //   } else if (selectedIndex1 == 0) {
  //     setState(() {
  //       textController1.text = textController2.text;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 20),
      child: Align(
        alignment: Alignment.topLeft, // Align the button to the left
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.27,
                  child: ElevatedButton(
                    // style: const ButtonStyle(
                    //     fixedSize: MaterialStatePropertyAll(Size.fromWidth(40))),
                    onPressed: () {
                      setState(() {
                        selectedIndex = 0;
                        showTextArea = !showTextArea;
                      });
                    },
                    child: Text('Add Task'),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.27,
                  margin: EdgeInsets.only(left: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedIndex = 1;
                        showwTextArea = !showwTextArea;
                      });
                    },
                    child: Text('log Task'),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.27,
                  margin: EdgeInsets.only(left: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedIndex = 2;
                        showwwTextArea = !showwwTextArea;
                      });
                    },
                    child: Text('Number'),
                  ),
                ),
              ],
            ),
            // 1st button
            // SizedBox(width: 16),
            selectedIndex == 0
                ? SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Visibility(
                      // visible: showTextArea,
                      child: TextField(
                        controller: textController1,
                        decoration: const InputDecoration(
                          hintText: 'Type your text here...',
                          border: OutlineInputBorder(),
                        ),
                        maxLines: 4,
                      ),
                    ),
                  )
                : const SizedBox(),
            // 2nd button
            // const SizedBox(width: 16),
            selectedIndex == 1
                ? SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Visibility(
                      // visible: showwTextArea,
                      child: TextField(
                        controller: textController2,
                        decoration: const InputDecoration(
                          hintText: 'Log task',
                          border: OutlineInputBorder(),
                        ),
                        maxLines: 4,
                      ),
                    ),
                  )
                : const SizedBox(),
            // third button
            const SizedBox(width: 16),
            selectedIndex == 2
                ? SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Visibility(
                      // visible: showwwTextArea,
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        controller: textController3,
                        decoration: const InputDecoration(
                          hintText: 'Phone Num',
                          border: OutlineInputBorder(),
                        ),
                        // maxLines: 4,
                      ),
                    ),
                  )
                : const SizedBox(),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.27,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedIndex1 = 0;
                        show4TextArea = !show4TextArea;
                      });
                    },
                    child: Text('button'),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.27,
                  margin: EdgeInsets.only(left: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedIndex1 = 1;
                        show5TextArea = !show5TextArea;
                      });
                    },
                    child: Text('nutton2'),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.27,
                  margin: EdgeInsets.only(left: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedIndex1 = 2;
                        show6TextArea = !show6TextArea;
                      });
                    },
                    child: Text('button 3'),
                  ),
                ),
              ],
            ),
            // 4th button
            // SizedBox(width: 16),
            selectedIndex1 == 0
                ? SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Visibility(
                      // visible: show4TextArea,
                      child: TextField(
                        controller: textController4,
                        decoration: InputDecoration(
                          hintText: 'checking4',
                          border: OutlineInputBorder(),
                        ),
                        // maxLines: 4,
                      ),
                    ),
                  )
                : const SizedBox(),
            // 5th button
            // SizedBox(width: 16),
            selectedIndex1 == 1
                ? SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Visibility(
                      // visible: show5TextArea,
                      child: TextField(
                        controller: textController5,
                        decoration: InputDecoration(
                          hintText: 'checking5',
                          border: OutlineInputBorder(),
                        ),
                        maxLines: 4,
                      ),
                    ),
                  )
                : const SizedBox(),
            // third button
            // SizedBox(width: 16),
            selectedIndex1 == 2
                ? SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Visibility(
                      // visible: show6TextArea,
                      child: TextField(
                        controller: textController6,
                        decoration: InputDecoration(
                          hintText: 'checking6',
                          border: OutlineInputBorder(),
                        ),
                        maxLines: 4,
                      ),
                    ),
                  )
                : const SizedBox(),
            ElevatedButton(
              onPressed: () {
                if (selectedIndex == 0) {
                  setState(() {
                    Task newTask = Task(
                      textController1.text,
                      textController2.text,
                      DateTime.now(),
                    );
                    tasks.add(newTask);
                    textController1.clear(); // Clear the Add Task field
                    textController2.clear(); // Clear the Log Task field
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Task added and logged')),
                    );
                  });
                }
              },
              child: Text('Save and Log Task'),
            ),
            // ElevatedButton(
            //   onPressed: _handleSaveAndLog,
            //   child: Text('Save and Log'),
            // ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Clean up the TextEditingController when the widget is disposed.
    textController1.dispose();
    textController2.dispose();
    textController3.dispose();
    textController4.dispose();
    textController5.dispose();
    textController6.dispose();
    super.dispose();
  }
}










// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class CommunicationButton extends StatefulWidget {
//   const CommunicationButton({Key? key}) : super(key: key);

//   @override
//   State<CommunicationButton> createState() => _CommunicationButtonState();
// }

// class Task {
//   final String title;
//   final String log;
//   final DateTime createdAt;

//   Task(this.title, this.log, this.createdAt);
// }

// class _CommunicationButtonState extends State<CommunicationButton> {
//   TextEditingController textController1 = TextEditingController();
//   TextEditingController textController2 = TextEditingController();
//   TextEditingController textController3 = TextEditingController();
//   TextEditingController textController4 = TextEditingController();
//   TextEditingController textController5 = TextEditingController();
//   TextEditingController textController6 = TextEditingController();

//   List<Task> tasks = [];
//   // 1st button row
//   bool showTextArea = false;
//   bool showwTextArea = false;
//   bool showwwTextArea = false;
//   // 2nd button row
//   bool show4TextArea = false;
//   bool show5TextArea = false;
//   bool show6TextArea = false;

//   int selectedIndex = 0;
//   int selectedIndex1 = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(left: 20, top: 20),
//       child: Align(
//         alignment: Alignment.topLeft, // Align the button to the left
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 Container(
//                   width: MediaQuery.of(context).size.width * 0.27,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       setState(() {
//                         selectedIndex = 0;
//                         showTextArea = !showTextArea;
//                       });
//                     },
//                     child: Text('Add Task'),
//                   ),
//                 ),
//                 Container(
//                   width: MediaQuery.of(context).size.width * 0.27,
//                   margin: EdgeInsets.only(left: 10),
//                   child: ElevatedButton(
//                     onPressed: () {
//                       setState(() {
//                         selectedIndex = 1;
//                         showwTextArea = !showwTextArea;
//                       });
//                     },
//                     child: Text('log Task'),
//                   ),
//                 ),
//                 Container(
//                   width: MediaQuery.of(context).size.width * 0.27,
//                   margin: EdgeInsets.only(left: 10),
//                   child: ElevatedButton(
//                     onPressed: () {
//                       setState(() {
//                         selectedIndex = 2;
//                         showwwTextArea = !showwwTextArea;
//                       });
//                     },
//                     child: Text('Number'),
//                   ),
//                 ),
//               ],
//             ),
//             // Rest of your code...

//             ElevatedButton(
//               onPressed: () {
//                 if (selectedIndex == 0) {
//                   setState(() {
//                     Task newTask = Task(
//                       textController1.text,
//                       textController2.text,
//                       DateTime.now(),
//                     );
//                     tasks.add(newTask);
//                     textController1.clear(); // Clear the Add Task field
//                     textController2.clear(); // Clear the Log Task field
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(content: Text('Task added and logged')),
//                     );
//                   });
//                 }
//               },
//               child: Text('Save and Log Task'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     // Clean up the TextEditingController when the widget is disposed.
//     textController1.dispose();
//     textController2.dispose();
//     textController3.dispose();
//     textController4.dispose();
//     textController5.dispose();
//     textController6.dispose();
//     super.dispose();
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(title: Text('Task App')),
//       body: CommunicationButton(),
//     ),
//   ));
// }














// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class CommunicationButton extends StatefulWidget {
//   const CommunicationButton({Key? key}) : super(key: key);

//   @override
//   State<CommunicationButton> createState() => _CommunicationButtonState();
// }

// class Task {
//   final String title;
//   final String log;
//   final DateTime createdAt;

//   Task(this.title, this.log, this.createdAt);
// }

// class _CommunicationButtonState extends State<CommunicationButton> {
//   TextEditingController textController1 = TextEditingController();
//   TextEditingController textController2 = TextEditingController();
//   List<Task> tasks = [];

//   bool showTextArea = false;
//   bool showwTextArea = false;

//   int selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(left: 20, top: 20),
//       child: Align(
//         alignment: Alignment.topLeft,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 Container(
//                   width: MediaQuery.of(context).size.width * 0.27,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       setState(() {
//                         selectedIndex = 0;
//                         showTextArea = !showTextArea;
//                       });
//                     },
//                     child: Text('Add Task'),
//                   ),
//                 ),
//                 Container(
//                   width: MediaQuery.of(context).size.width * 0.27,
//                   margin: EdgeInsets.only(left: 10),
//                   child: ElevatedButton(
//                     onPressed: () {
//                       setState(() {
//                         selectedIndex = 1;
//                         showwTextArea = !showwTextArea;
//                       });
//                     },
//                     child: Text('Log Task'),
//                   ),
//                 ),
//               ],
//             ),
//             selectedIndex == 0
//                 ? SizedBox(
//                     width: MediaQuery.of(context).size.width * 0.9,
//                     child: Visibility(
//                       visible: showTextArea,
//                       child: TextField(
//                         controller: textController1,
//                         decoration: const InputDecoration(
//                           hintText: 'Type your text here...',
//                           border: OutlineInputBorder(),
//                         ),
//                         maxLines: 4,
//                       ),
//                     ),
//                   )
//                 : const SizedBox(),
//             selectedIndex == 1
//                 ? SizedBox(
//                     width: MediaQuery.of(context).size.width * 0.9,
//                     child: Visibility(
//                       visible: showwTextArea,
//                       child: TextField(
//                         controller: textController2,
//                         decoration: const InputDecoration(
//                           hintText: 'Log task',
//                           border: OutlineInputBorder(),
//                         ),
//                         maxLines: 4,
//                       ),
//                     ),
//                   )
//                 : const SizedBox(),
            // ElevatedButton(
            //   onPressed: () {
            //     if (selectedIndex == 0) {
            //       setState(() {
            //         Task newTask = Task(
            //           textController1.text,
            //           textController2.text,
            //           DateTime.now(),
            //         );
            //         tasks.add(newTask);
            //         textController1.clear(); // Clear the Add Task field
            //         textController2.clear(); // Clear the Log Task field
            //         ScaffoldMessenger.of(context).showSnackBar(
            //           SnackBar(content: Text('Task added and logged')),
            //         );
            //       }
            //       );
            //     }
            //   },
            //   child: Text('Save and Log Task'),
            // ),
            // Expanded(
            //   child: ListView.builder(
            //     itemCount: tasks.length,
            //     itemBuilder: (context, index) {
            //       return ListTile(
            //         title: Text('Task: ${tasks[index].title}'),
            //         subtitle: Text('Log: ${tasks[index].log}'),
            //         trailing: Text('Date: ${tasks[index].createdAt}'),
            //       );
            //     },
            //   ),
            // ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

//   @override
//   void dispose() {
//     textController1.dispose();
//     textController2.dispose();
//     super.dispose();
//   }
// }












// import 'package:flutter/material.dart';

// class CommunicationButton extends StatefulWidget {
//   const CommunicationButton({Key? key}) : super(key: key);

//   @override
//   State<CommunicationButton> createState() => _CommunicationButtonState();
// }

// class _CommunicationButtonState extends State<CommunicationButton> {
//   TextEditingController textController1 = TextEditingController();
//   TextEditingController textController2 = TextEditingController();
//   TextEditingController textController3 = TextEditingController();
//   TextEditingController textController4 = TextEditingController();
//   TextEditingController textController5 = TextEditingController();
//   TextEditingController textController6 = TextEditingController();

//   bool showTextArea = false;
//   bool showwTextArea = false;
//   bool showwwTextArea = false;

//   bool show4TextArea = false;
//   bool show5TextArea = false;
//   bool show6TextArea = false;

//   int selectedIndex = 0;
//   int selectedIndex1 = 0;

//   void _handleSaveAndLog() {
//     if (selectedIndex == 0) {
//       setState(() {
//         textController2.text = textController1.text;
//       });
//     } else if (selectedIndex1 == 0) {
//       setState(() {
//         textController5.text = textController4.text;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(left: 20, top: 20),
//       child: Align(
//         alignment: Alignment.topLeft,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 // ... Your button code here ...
//               ],
//             ),
//             // ... Your input fields here ...

//             ElevatedButton(
//               onPressed: _handleSaveAndLog,
//               child: Text('Save and Log'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     textController1.dispose();
//     textController2.dispose();
//     textController3.dispose();
//     textController4.dispose();
//     textController5.dispose();
//     textController6.dispose();
//     super.dispose();
//   }
// }
















// import 'package:flutter/material.dart';

// // void main() {
// //   runApp(MyApp());
// // }

// class Task {
//   final String title;
//   final DateTime createdAt;

//   Task(this.title, this.createdAt);
// }

// class TaskLog {
//   List<Task> tasks = [];

//   void addTask(Task task) {
//     tasks.add(task);
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Task App',
//       home: CommunicationButton(),
//     );
//   }
// }

// class CommunicationButton extends StatefulWidget {
//   const CommunicationButton({Key? key}) : super(key: key);

//   @override
//   State<CommunicationButton> createState() => _CommunicationButtonState();
// }

// class _CommunicationButtonState extends State<CommunicationButton> {
//   TextEditingController textController1 = TextEditingController();
//   TextEditingController textController2 = TextEditingController();

//   bool showTextArea = false;
//   bool showwTextArea = false;

//   int selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(left: 20, top: 20),
//       child: Align(
//         alignment: Alignment.topLeft,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 Container(
//                   width: MediaQuery.of(context).size.width * 0.27,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       setState(() {
//                         selectedIndex = 0;
//                         showTextArea = !showTextArea;
//                       });
//                     },
//                     child: Text('Add Task'),
//                   ),
//                 ),
//                 Container(
//                   width: MediaQuery.of(context).size.width * 0.27,
//                   margin: EdgeInsets.only(left: 10),
//                   child: ElevatedButton(
//                     onPressed: () {
//                       setState(() {
//                         selectedIndex = 1;
//                         showwTextArea = !showwTextArea;
//                       });
//                     },
//                     child: Text('Log Task'),
//                   ),
//                 ),
//               ],
//             ),
//             selectedIndex == 0
//                 ? SizedBox(
//                     width: MediaQuery.of(context).size.width * 0.9,
//                     child: Visibility(
//                       visible: showTextArea,
//                       child: TextField(
//                         controller: textController1,
//                         decoration: const InputDecoration(
//                           hintText: 'Type your text here...',
//                           border: OutlineInputBorder(),
//                         ),
//                         maxLines: 4,
//                       ),
//                     ),
//                   )
//                 : const SizedBox(),
//             selectedIndex == 1
//                 ? SizedBox(
//                     width: MediaQuery.of(context).size.width * 0.9,
//                     child: Visibility(
//                       visible: showwTextArea,
//                       child: TextField(
//                         controller: textController2,
//                         decoration: const InputDecoration(
//                           hintText: 'Log task',
//                           border: OutlineInputBorder(),
//                         ),
//                         maxLines: 4,
//                       ),
//                     ),
//                   )
//                 : const SizedBox(),
//             ElevatedButton(
//               onPressed: () {
//                 if (selectedIndex == 0) {
//                   setState(() {
//                     Task newTask =
//                         Task(textController1.text, DateTime.now());
//                     textController2.text = textController1.text; // Log task
//                     textController1.clear(); // Clear the Add Task field
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(content: Text('Task added and logged')),
//                     );
//                   });
//                 }
//               },
//               child: Text('Save and Log Task'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     textController1.dispose();
//     textController2.dispose();
//     super.dispose();
//   }
// }
