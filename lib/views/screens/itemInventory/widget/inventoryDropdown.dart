import 'package:acounting_max/Provider/PerchaseFormData.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InventoryDropdown extends StatefulWidget {
  const InventoryDropdown({super.key});

  @override
  State<InventoryDropdown> createState() => _InventoryDropdownState();
}

class _InventoryDropdownState extends State<InventoryDropdown> {
  String selectedOptionVender = 'Vendor1'; // Set the initial selected option
  // String selectedCostingOption = 'Avarage'; // Set the initial selected option
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Container(
        //   margin: EdgeInsets.only(top: 30.0, left: 15),
        //   // child: const Row(
        //   //   // children: [
        //   //   //   // Text(
        //   //   //   //   "Costing Method",
        //   //   //   //   style: TextStyle(
        //   //   //   //     fontSize: 18, // Set the font size here
        //   //   //   //   ),
        //   //   //   // ),
        //   //   // ],
        //   // ),
        // ),
        // Container(
        //   margin: EdgeInsets.only(top: 20.0),
        //   child: FractionallySizedBox(
        //     widthFactor: 0.9, // Set the width factor to 90% of the screen
        //     child: DropdownButton<String>(
        //       value: selectedCostingOption,
        //       onChanged: (String? newValue) {
        //         setState(() {
        //           selectedCostingOption = newValue!;
        //           context
        //               .read<ItemForm3Provider>()
        //               .updateCostingOption(newValue);
        //         });
        //       },
        //       items: <String>['Avarage', 'FIFO'].map((String value) {
        //         return DropdownMenuItem<String>(
        //           value: value,
        //           child: Text(value),
        //         );
        //       }).toList(),
        //     ),
        //   ),
        // ),
        Container(
          margin: EdgeInsets.only(left: 15, top: 10),
          child: Row(
            children: [
              Text(
                "Drop Shipping",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Checkbox(
                value: isChecked,
                onChanged: (newValue) {
                  setState(() {
                    isChecked = newValue!;
                     context.read<ItemForm3Provider>().updateDropShipping(newValue);
                  });
                },
              ),
            ],
          ),
        ),
        !isChecked
            ? Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30.0, left: 15),
                    child: const Row(
                      children: [
                        Text(
                          "Preferred Vendor",
                          style: TextStyle(
                            fontSize: 18, // Set the font size here
                          ),
                        ),
                      ],
                    ),
                  ),

                  //prefeard vender
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: FractionallySizedBox(
                      widthFactor:
                          0.9, // Set the width factor to 90% of the screen
                      child: DropdownButton<String>(
                        value: selectedOptionVender,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedOptionVender = newValue!;
                            context.read<ItemForm3Provider>().updateVendor(newValue);
                          });
                        },
                        items: <String>[
                          'Vendor1', // Add 'Vendor1' as a new option
                          'Vendor Name', // Keep the existing 'Vendor Name' option
                        ].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              )
            : const SizedBox(),
      ],
    );
  }
}

// import 'package:acounting_max/Provider/PerchaseFormData.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class InventoryDropdown extends StatefulWidget {
//   const InventoryDropdown({super.key});

//   @override
//   State<InventoryDropdown> createState() => _InventoryDropdownState();
// }

// class _InventoryDropdownState extends State<InventoryDropdown> {
//   String selectedOptionVender = 'Vendor1'; // Set the initial selected option
//   String selectedCostingOption = 'Average'; // Set the initial selected option
//   bool isChecked = false;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           margin: EdgeInsets.only(top: 30.0, left: 15),
//           child: const Row(
//             children: [
//               Text(
//                 "Costing Method",
//                 style: TextStyle(
//                   fontSize: 18, // Set the font size here
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.only(top: 20.0),
//           child: FractionallySizedBox(
//             widthFactor: 0.9, // Set the width factor to 90% of the screen
//             child: DropdownButton<String>(
//               value: selectedCostingOption,
//               onChanged: (String? newValue) {
//                 setState(() {
//                   selectedCostingOption = newValue!;
//                   context
//                       .read<PerchaseFormProvider>()
//                       .updateSelectedCategory(newValue);
//                 });
//               },
//               items: <String>['Average', 'FIFO'].map((String value) {
//                 return DropdownMenuItem<String>(
//                   value: value,
//                   child: Text(value),
//                 );
//               }).toList(),
//             ),
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.only(left: 15, top: 10),
//           child: Row(
//             children: [
//               Text(
//                 "Drop Shipping",
//                 style: TextStyle(
//                   fontSize: 18,
//                 ),
//               ),
//               Checkbox(
//                 value: isChecked,
//                 onChanged: (newValue) {
//                   setState(() {
//                     isChecked = newValue!;
//                   });
//                 },
//               ),
//             ],
//           ),
//         ),
//         !isChecked
//             ? Column(
//                 children: [
//                   Container(
//                     margin: EdgeInsets.only(top: 30.0, left: 15),
//                     child: const Row(
//                       children: [
//                         Text(
//                           "Preferred Vendor",
//                           style: TextStyle(
//                             fontSize: 18, // Set the font size here
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),

//                   //preferred vendor
//                   Container(
//                     margin: EdgeInsets.only(top: 20.0),
//                     child: FractionallySizedBox(
//                       widthFactor:
//                           0.9, // Set the width factor to 90% of the screen
//                       child: DropdownButton<String>(
//                         value: selectedOptionVender,
//                         onChanged: (String? newValue) {
//                           setState(() {
//                             selectedOptionVender = newValue!;
//                           });
//                         },
//                         items: <String>[
//                           'Vendor1', // Add 'Vendor1' as a new option
//                           'Vendor Name', // Keep the existing 'Vendor Name' option
//                         ].map((String value) {
//                           return DropdownMenuItem<String>(
//                             value: value,
//                             child: Text(value),
//                           );
//                         }).toList(),
//                       ),
//                     ),
//                   ),
//                 ],
//               )
//             : const SizedBox(),
//       ],
//     );
//   }
// }
