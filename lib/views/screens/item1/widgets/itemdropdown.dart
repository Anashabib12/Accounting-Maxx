import 'package:flutter/material.dart';

class ItemDropdown extends StatefulWidget {
  const ItemDropdown({Key? key}) : super(key: key);

  @override
  State<ItemDropdown> createState() => _ItemDropdownState();
}

class _ItemDropdownState extends State<ItemDropdown> {
  String selectedOption = 'Retailer'; // Set the initial selected option

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ Container(
          margin: EdgeInsets.only(top: 30.0, left: 25),
          child: const Row(
            children: [
              Text(
                "Category",
                style: TextStyle(
                  fontSize: 18, // Set the font size here
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 300,
          margin: EdgeInsets.only(top: 10.0),
          child: DropdownButton<String>(
            value: selectedOption,
            onChanged: (String? newValue) {
              setState(() {
                selectedOption = newValue!;
              });
            },
            items: <String>['Retailer', 'Wholesaler'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}








// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/material.dart';

// const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

// class itemDropdown extends StatefulWidget {
//   const itemDropdown({super.key});

//   @override
//   State<itemDropdown> createState() => _itemDropdownState();
// }

// class _itemDropdownState extends State<itemDropdown> {
//   String dropdownValue = list.first;

//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton<String>(
//       value: dropdownValue ,
//       icon: const Icon(Icons.arrow_downward),
//       // elevation: 5,
//       // style: const TextStyle(color: Colors.deepPurple),
//       // underline: Container(
//       //   // height: 4,
//       //   // width: 50,
//       //   color: Colors.deepPurpleAccent,
//       // ),
//       onChanged: (String? value) {
//         // This is called when the user selects an item.
//         setState(() {
//           dropdownValue = value!;
//         });
//       },
//       items: list.map<DropdownMenuItem<String>>((String value) {
//         return DropdownMenuItem<String>(
//           value: value,
//           child: Text(value),
//         );
//       }).toList(),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class itemDropdown extends StatefulWidget {
//   const itemDropdown({super.key});

//   @override
//   State<itemDropdown> createState() => _itemDropdownState();
// }

// class _itemDropdownState extends State<itemDropdown> {
//   String dropdownValue = 'Category';
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 300,
//        margin: EdgeInsets.only(top: 20.0),
//       child: DropdownButton<String>(
//         value: dropdownValue,
//         onChanged: (String? newValue) {
//           setState(() {
//             dropdownValue = newValue!;
//           });
//         },
//         items: <String>['Retailer', 'Wholesaler'].map((String value) {
//           return DropdownMenuItem<String>(
//             value: value,
//             child: Text(value),
//           );
//         }).toList(),
//         ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class itemDropdown extends StatefulWidget {
//   itemDropdown({Key? key}) : super(key: key);

//   @override
//   State<itemDropdown> createState() => _itemDropdownState();
// }

// class _itemDropdownState extends State<itemDropdown> {
//   String dropdownValue = 'Category';

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 300,
//       margin: EdgeInsets.only(top: 20.0),
//       child: DropdownButton<String>(
//         value: dropdownValue,
//         onChanged: (String? newValue) {
//           setState(() {
//             dropdownValue = newValue!;
//           });
//         },
//         items: <String>['Retailer', 'Wholesaler'].map((String value) {
//           return DropdownMenuItem<String>(
//             value: value,
//             child: Text(value),
//           );
//         }).toList(),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class itemDropdown extends StatefulWidget {
//   const itemDropdown({super.key});

//   @override
//   State<itemDropdown> createState() => _itemDropdownState();
// }

// class _itemDropdownState extends State<itemDropdown> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 300,
//       margin: EdgeInsets.only(top: 20.0),
//       child: DropdownButton<String>(
//         value: null,
//         items: const [
//           DropdownMenuItem(
//             value: 'Option 1',
//             child: Text('Option 1'),
//           ),
//           DropdownMenuItem(
//             value: 'Option 2',
//             child: Text('Option 2'),
//           ),
//         ],
//         onChanged: (value) {},
//       ),
//     );
    
//   }
// }







// import 'package:flutter/material.dart';

// class ItemDropdown extends StatefulWidget {
//    final String? selectedValue;

//   const ItemDropdown({this.selectedValue, Key? key}) : super(key: key);

//   @override
//   State<ItemDropdown> createState() => _ItemDropdownState();
// }

// class _ItemDropdownState extends State<ItemDropdown> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 300,
//       child: DropdownButton<String>(
//         value: widget.selectedValue,
//         items: const [
//           DropdownMenuItem(
//             value: 'Option 1',
//             child: Text('Option 1'),
//           ),
//           DropdownMenuItem(
//             value: 'Option 2',
//             child: Text('Option 2'),
//           ),
//         ],
//         // onChanged: (value) {
//         //   setState(() {
//         //     widget.selectedValue = value;
//         //   });
//         // },
//       ),
//     );
//   }
// }
