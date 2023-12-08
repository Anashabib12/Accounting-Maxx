import 'package:acounting_max/Provider/ItemFormDataProvider.dart';
import 'package:acounting_max/models/modelDB.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppBarwidgets extends StatefulWidget {
  const AppBarwidgets({super.key});

  @override
  State<AppBarwidgets> createState() => _AppBarwidgetsState();
}

class _AppBarwidgetsState extends State<AppBarwidgets> {
  @override
  Widget build(BuildContext context) {
    return AppBar(

        // leading: Icon(Icons.arrow_back),
        title: const Text('  New Items'),
        // name: Text('My App'),
        backgroundColor: const Color(0xFF50C2C9),
// Change this color to customize the app bar background color
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            tooltip: 'Comment Icon',
            onPressed: () {
              final formProvider = context.read<ItemFormProvider>();
              if (formProvider.validateItemName() == null) {
                formProvider.saveItemToIsar(IsarService());
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("successfully save")));
              }
              // else if(formProvider.validateItemName(formProvider.itemCode) == null){

              // }
              else {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Please fill all Mandatory fields")));
              }
            },
            // onPressed: () {
            //   context.read<ItemFormProvider>().save();
            //   //  context.read<ItemFormProvider>().save();
            //   // context.read<ItemFormProvider>().clearFields();
            // },
          ), //IconButton
          // Text(
          // "Save",
          // style: TextStyle(
          //     // fontSize: MediaQuery.of(context).size.width * 0.6,
          //     // fontWeight: FontWeight.bold,
          //     ),
          // ),
        ]);
  }
}

// import 'package:acounting_max/Provider/ItemFormDataProvider.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class AppBarwidgets extends StatefulWidget {
//   const AppBarwidgets({super.key});

//   @override
//   State<AppBarwidgets> createState() => _AppBarwidgetsState();
// }

// class _AppBarwidgetsState extends State<AppBarwidgets> {
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(

//         // leading: Icon(Icons.arrow_back),
//         title: const Text('  New Items'),
//         // name: Text('My App'),
//         backgroundColor: const Color(0xFF50C2C9),
// // Change this color to customize the app bar background color
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.save),
//             tooltip: 'Comment Icon',
//             onPressed: () {
//               final formProvider = context.read<ItemFormProvider>();
//               if (formProvider.validateItemName(formProvider.itemName,
//                       formProvider.itemCode, formProvider.purchasePrice) ==
//                   null) {
//                 formProvider.save();
//                 ScaffoldMessenger.of(context).showSnackBar(
//                     const SnackBar(content: Text("successfully save")));
//               }
//               // else if(formProvider.validateItemName(formProvider.itemCode) == null){

//               // }
//               else {
//                 ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//                     content: Text("Please fill all Mandatory fields")));
//               }
//             },
//             // onPressed: () {
//             //   context.read<ItemFormProvider>().save();
//             //   //  context.read<ItemFormProvider>().save();
//             //   // context.read<ItemFormProvider>().clearFields();
//             // },
//           ), //IconButton
//           // Text(
//           // "Save",
//           // style: TextStyle(
//           //     // fontSize: MediaQuery.of(context).size.width * 0.6,
//           //     // fontWeight: FontWeight.bold,
//           //     ),
//           // ),
//         ]);
//   }
// }



// import 'package:acounting_max/Provider/ItemFormDataProvider.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// // import 'item_form_provider.dart'; // Import the created provider

// class AppBarwidgets extends StatefulWidget {
//   const AppBarwidgets({super.key});

//   @override
//   State<AppBarwidgets> createState() => _AppBarwidgetsState();
// }

// class _AppBarwidgetsState extends State<AppBarwidgets> {
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       // ...
//       actions: [
//         IconButton(
//           icon: const Icon(Icons.save),
//           tooltip: 'Save',
//           onPressed: () {
//             // Save the data using the provider
//             final provider = context.read<ItemFormProvider>();
//             // Here you can access provider.itemName, provider.itemCode, provider.purchasePrice and perform your saving logic
//             // provider.clearFields(); // Clear the fields after saving
//           },
//         ),
//       ],
//     );
//   }
// }







// import 'package:acounting_max/views/screens/item1/widgets/itemform.dart';
// import 'package:flutter/material.dart';
// // import 'package:flutter/src/widgets/container.dart';
// import 'package:provider/provider.dart';
// class AppBarwidgets extends StatefulWidget {
//   const AppBarwidgets({Key? key}) : super(key: key);

//   @override
//   State<AppBarwidgets> createState() => _AppBarwidgetsState();
// }

// class _AppBarwidgetsState extends State<AppBarwidgets> {
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       title: const Text('New Items'),
//       backgroundColor: const Color(0xFF50C2C9),
//       actions: [
//         IconButton(
//           icon: const Icon(Icons.save),
//           onPressed: () {
//             // Save button action
//             final formData = Provider.of<ItemFormData>(context, listen: false);
//             saveFormData(context, formData);
//           },
//         ),
//       ],
//     );
//   }

//   void saveFormData(BuildContext context, ItemFormData formData) {
//     // Perform any desired actions with the form data
//     print('Saving from AppBar: ${formData.itemName}, ${formData.itemCode}, ${formData.purchasePrice}');
//   }
// }
