// // import 'package:flutter/material.dart';

// // class SystemInfoForm extends StatefulWidget {
// //   const SystemInfoForm({super.key});

// //   @override
// //   State<SystemInfoForm> createState() => _SystemInfoFormState();
// // }

// // class _SystemInfoFormState extends State<SystemInfoForm> {
// //   final _formKey = GlobalKey<FormState>();
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       padding: const EdgeInsets.only(left: 25.0, right: 25, top: 20.0),
// //       child: Form(
// //           key: _formKey,
// //           child: Column(children: <Widget>[
// //             TextFormField(
// //               decoration: const InputDecoration(
// //                 // icon: const Icon(Icons.person),
// //                 hintText: 'Date/Time',
// //                 labelText: 'Date',
// //               ),
// //             ),
// //             TextFormField(
// //               decoration: const InputDecoration(
// //                 // icon: const Icon(Icons.person),
// //                 hintText: 'Set By',
// //                 labelText: 'Set By',
// //               ),
// //             ),
// //             TextFormField(
// //               decoration: const InputDecoration(
// //                 // icon: const Icon(Icons.person),
// //                 hintText: 'Contaxt',
// //                 labelText: 'Contaxt',
// //               ),
// //             ),
// //             TextFormField(
// //               decoration: const InputDecoration(
// //                 // icon: const Icon(Icons.person),
// //                 hintText: 'Type',
// //                 labelText: 'Type',
// //               ),
// //             ),
// //             TextFormField(
// //               decoration: const InputDecoration(
// //                 // icon: const Icon(Icons.person),
// //                 hintText: 'Field',
// //                 labelText: 'Field',
// //               ),
// //             ),
// //             TextFormField(
// //               decoration: const InputDecoration(
// //                 // icon: const Icon(Icons.person),
// //                 hintText: 'Old Value',
// //                 labelText: 'Old Value',
// //               ),
// //             ),
// //             TextFormField(
// //               decoration: const InputDecoration(
// //                 // icon: const Icon(Icons.person),
// //                 hintText: 'New Value',
// //                 labelText: 'New Value',
// //               ),
// //             ),
// //           ])),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// class SystemInfoForm extends StatefulWidget {
//   const SystemInfoForm({super.key});

//   @override
//   State<SystemInfoForm> createState() => _SystemInfoFormState();
// }

// class _SystemInfoFormState extends State<SystemInfoForm> {
//   final _formKey = GlobalKey<FormState>();
//   DateTime selectedDateTime = DateTime.now(); // Add this line

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.only(left: 25.0, right: 25, top: 20.0),
//       child: Form(
//         key: _formKey,
//         child: Column(
//           children: <Widget>[
//             // Replace this TextFormField with DateTimePicker
//             GestureDetector(
//               onTap: () async {
//                 DateTime? pickedDateTime = await showDatePicker(
//                   context: context,
//                   initialDate: selectedDateTime,
//                   firstDate: DateTime(2000),
//                   lastDate: DateTime(2101),
//                 );

//                 if (pickedDateTime != null) {
//                   setState(() {
//                     selectedDateTime = pickedDateTime;
//                   });
//                 }
//               },
//               child: InputDecorator(
//                 decoration: InputDecoration(
//                   hintText: 'Date/Time',
//                   labelText: 'Date/Time',
//                 ),
//                 child: Text(
//                   DateFormat('yyyy-MM-dd HH:mm:ss').format(selectedDateTime),
//                 ),
//               ),
//             ),

//                         TextFormField(
//               decoration: const InputDecoration(
//                 // icon: const Icon(Icons.person),
//                 hintText: 'Set By',
//                 labelText: 'Set By',
//               ),
//             ),
//             TextFormField(
//               decoration: const InputDecoration(
//                 // icon: const Icon(Icons.person),
//                 hintText: 'Contaxt',
//                 labelText: 'Contaxt',
//               ),
//             ),
//             TextFormField(
//               decoration: const InputDecoration(
//                 // icon: const Icon(Icons.person),
//                 hintText: 'Type',
//                 labelText: 'Type',
//               ),
//             ),
//             TextFormField(
//               decoration: const InputDecoration(
//                 // icon: const Icon(Icons.person),
//                 hintText: 'Field',
//                 labelText: 'Field',
//               ),
//             ),
//             TextFormField(
//               decoration: const InputDecoration(
//                 // icon: const Icon(Icons.person),
//                 hintText: 'Old Value',
//                 labelText: 'Old Value',
//               ),
//             ),
//             TextFormField(
//               decoration: const InputDecoration(
//                 // icon: const Icon(Icons.person),
//                 hintText: 'New Value',
//                 labelText: 'New Value',
//               ),
//             ),

//             // Other TextFormField widgets...
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'dart:js_interop';
// import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SystemInfoForm extends StatefulWidget {
  const SystemInfoForm({super.key});

  @override
  State<SystemInfoForm> createState() => _SystemInfoFormState();
}

class _SystemInfoFormState extends State<SystemInfoForm> {
  final _formKey = GlobalKey<FormState>();
  DateTime selectedDateTime = DateTime.now(); // Add this line
  int addScreen = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 20, top: 20),
          child: const Text(
            "System Information",
            style: TextStyle(
                // fontSize: MediaQuery.of(context).size.width * 0.6,
                // fontWeight: FontWeight.bold,
                ),
          ),
        ),
        Container(
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: addScreen,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  child: Form(
                    // key: _formKey,
                    child: Column(
                      children: <Widget>[
                        // Replace this TextFormField with DateTimePicker
                        GestureDetector(
                          onTap: () async {
                            DateTime? pickedDateTime = await showDatePicker(
                              context: context,
                              initialDate: selectedDateTime,
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2101),
                            );
                            if (pickedDateTime != null) {
                              setState(() {
                                selectedDateTime = pickedDateTime;
                              });
                            }
                          },
                          child: InputDecorator(
                            decoration: InputDecoration(
                              hintText: 'Date/Time',
                              labelText: 'Date/Time',
                            ),
                            child: Text(
                              DateFormat('yyyy-MM-dd HH:mm:ss')
                                  .format(selectedDateTime),
                            ),
                          ),
                        ),

                        TextFormField(
                          //                  validator: (value) {
                          //   if (value == null || value.isEmpty) {
                          //     return 'Please enter some text';
                          //   }
                          //   return null;
                          // },
                          decoration: const InputDecoration(
                            // icon: const Icon(Icons.person),
                            hintText: 'Set By',
                            labelText: 'Set By',
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            // icon: const Icon(Icons.person),
                            hintText: 'Contaxt',
                            labelText: 'Contaxt',
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            // icon: const Icon(Icons.person),
                            hintText: 'Type',
                            labelText: 'Type',
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            // icon: const Icon(Icons.person),
                            hintText: 'Field',
                            labelText: 'Field',
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            // icon: const Icon(Icons.person),
                            hintText: 'Old Value',
                            labelText: 'Old Value',
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            // icon: const Icon(Icons.person),
                            hintText: 'New Value',
                            labelText: 'New Value',
                          ),
                        ),
                        // Other TextFormField widgets...
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10, left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.3,
              child: ElevatedButton(
                // initialDate: selectedDateTime,
                // firstDate: DateTime(2000),
                // lastDate: DateTime(2101),
                onPressed: () {
                  // // _formKey.currentContext!;
                  //             if (_formKey.currentState!.validate()) {
                  //   // If the form is valid, display a snackbar. In the real world,
                  //   // you'd often call a server or save the information in a database.
                  //   ScaffoldMessenger.of(context).showSnackBar(
                  //     const SnackBar(content: Text('Processing Data')),
                  //   );
                  // }
                  setState(() {
                    addScreen++;
                  });
                },
                child: const Icon(Icons.add_circle_outline),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
              ),
            )
          ]),
        ),
      ],
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// class SystemInfoForm extends StatefulWidget {
//   const SystemInfoForm({super.key});

//   @override
//   State<SystemInfoForm> createState() => _SystemInfoFormState();
// }

// class _SystemInfoFormState extends State<SystemInfoForm> {
//   final _formKey = GlobalKey<FormState>();
//   DateTime selectedDateTime = DateTime.now(); // Add this line
//   DateTime currentDateTime = DateTime.now(); // Add this line
//   int addScreen = 1;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           margin: EdgeInsets.only(left: 20, top: 20),
//           child: const Text(
//             "System Information",
//             style: TextStyle(
//               // fontSize: MediaQuery.of(context).size.width * 0.6,
//               // fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//         Container(
//           child: ListView.builder(
//             shrinkWrap: true,
//             physics: const NeverScrollableScrollPhysics(),
//             itemCount: addScreen,
//             itemBuilder: (context, index) {
//               return Padding(
//                 padding: const EdgeInsets.all(20),
//                 child: Container(
//                   child: Form(
//                     // key: _formKey,
//                     child: Column(
//                       children: <Widget>[
//                         GestureDetector(
//                           onTap: () async {
//                             DateTime? pickedDateTime = await showDatePicker(
//                               context: context,
//                               initialDate: selectedDateTime,
//                               firstDate: DateTime(2000),
//                               lastDate: DateTime(2101),
//                             );
//                             if (pickedDateTime != null) {
//                               setState(() {
//                                 selectedDateTime = pickedDateTime;
//                               });
//                             }
//                           },
//                           child: InputDecorator(
//                             decoration: InputDecoration(
//                               hintText: 'Date/Time',
//                               labelText: 'Date/Time',
//                             ),
//                             child: Text(
//                               DateFormat('yyyy-MM-dd HH:mm:ss')
//                                   .format(selectedDateTime),
//                             ),
//                           ),
//                         ),
//                         TextFormField(
//                           decoration: const InputDecoration(
//                             hintText: 'Set By',
//                             labelText: 'Set By',
//                           ),
//                         ),
//                         TextFormField(
//                           decoration: const InputDecoration(
//                             hintText: 'Contact',
//                             labelText: 'Contact',
//                           ),
//                         ),
//                         TextFormField(
//                           decoration: const InputDecoration(
//                             hintText: 'Type',
//                             labelText: 'Type',
//                           ),
//                         ),
//                         TextFormField(
//                           decoration: const InputDecoration(
//                             hintText: 'Field',
//                             labelText: 'Field',
//                           ),
//                         ),
//                         TextFormField(
//                           decoration: const InputDecoration(
//                             hintText: 'Old Value',
//                             labelText: 'Old Value',
//                           ),
//                         ),
//                         TextFormField(
//                           decoration: const InputDecoration(
//                             hintText: 'New Value',
//                             labelText: 'New Value',
//                           ),
//                         ),
//                         // Other TextFormField widgets...
//                       ],
//                     ),
//                   ),
//                 ),
//               );
//             },
//           ),
//         ),
//         Text(
//           "Current Date/Time: ${DateFormat('yyyy-MM-dd HH:mm:ss').format(currentDateTime)}",
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 16,
//             color: Colors.blue,
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.only(top: 10, left: 10),
//           child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   addScreen++;
//                   currentDateTime = DateTime.now(); // Update the current date and time
//                 });
//               },
//               child: const Icon(Icons.add_circle_outline),
//               style: ElevatedButton.styleFrom(
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//             ),
//           ]),
//         ),
//       ],
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text('System Info Form'),
//       ),
//       body: Center(
//         child: SystemInfoForm(),
//       ),
//     ),
//   ));
// }
