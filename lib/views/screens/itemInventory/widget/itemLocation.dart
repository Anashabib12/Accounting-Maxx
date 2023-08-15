// import 'package:flutter/material.dart';

// class ItemLocation extends StatefulWidget {
//   const ItemLocation({super.key});

//   @override
//   State<ItemLocation> createState() => _ItemLocationState();
// }

// class _ItemLocationState extends State<ItemLocation> {
//   List<String> locations = [
//     'Location 1',
//     'Location 2',
//     'Location 3',
//     'Location 4',
//     'Location 5',
//     'Location 6',
//     'Location 7',
//     'Location 8',
//     'Location 9',
//     'Location 10',
//   ];

//   List<String> selectedLocations = [];

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             margin: EdgeInsets.only(left: 20),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   margin: EdgeInsets.only(bottom: 20),
//                   child: DropdownButton<String>(
//                     value: null, // Initially, no value is selected
//                     hint: Text('Select locations'),
//                     onChanged: (String? newValue) {
//                       if (newValue != null &&
//                           !selectedLocations.contains(newValue)) {
//                         setState(() {
//                           selectedLocations.add(newValue);
//                         });
//                       }
//                     },
//                     items: locations.map((String value) {
//                       return DropdownMenuItem<String>(
//                         value: value,
//                         child: Text(value),
//                       );
//                     }).toList(),
//                   ),
//                 ),
//                 Text('Selected Locations:'),
//                 Wrap(
//                   spacing: 8,
//                   children: selectedLocations.map((location) {
//                     return Chip(
//                       label: Text(location),
//                       onDeleted: () {
//                         setState(() {
//                           selectedLocations.remove(location);
//                         });
//                       },
//                     );
//                   }).toList(),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

class ItemLocation extends StatefulWidget {
  const ItemLocation({super.key});

  @override
  State<ItemLocation> createState() => _ItemLocationState();
}

class _ItemLocationState extends State<ItemLocation> {
  List<String> locations = [
    'Location 1',
    'Location 2',
    'Location 3',
    'Location 4',
    'Location 5',
    'Location 6',
    'Location 7',
    'Location 8',
    'Location 9',
    'Location 10',
  ];

  List<String> selectedLocations = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded( // Wrap the Column with an Expanded widget
            child: Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: DropdownButton<String>(
                      value: null, // Initially, no value is selected
                      hint: Text('Select locations'),
                      onChanged: (String? newValue) {
                        if (newValue != null &&
                            !selectedLocations.contains(newValue)) {
                          setState(() {
                            selectedLocations.add(newValue);
                          });
                        }
                      },
                      items: locations.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  Text('Selected Locations:'),
                  Wrap(
                    spacing: 8,
                    children: selectedLocations.map((location) {
                      return Chip(
                        label: Text(location),
                        onDeleted: () {
                          setState(() {
                            selectedLocations.remove(location);
                          });
                        },
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
