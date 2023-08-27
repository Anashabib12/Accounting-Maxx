import 'package:acounting_max/Provider/ItemFormDataProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class itemFormWidget extends StatefulWidget {
  const itemFormWidget({super.key});

  @override
  State<itemFormWidget> createState() => _itemFormWidgetState();
}

class _itemFormWidgetState extends State<itemFormWidget> {
  final TextEditingController ItemName = TextEditingController();
  final TextEditingController ItemCode = TextEditingController();
  final TextEditingController PurchasePrice = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  //  late String  itemName;
  // String? _validateItemName(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return 'Name Required';
  //   }
  //   return null;
  // }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 25.0, right: 25, top: 20.0),
      child: Form(
        key: _formKey,
        // autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // const padding(
            //  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            // )
            
            TextFormField(
              //  validator: _validateItemName,
              controller: ItemName,
              decoration: const InputDecoration(
                // icon: const Icon(Icons.person),
                hintText: 'Item Name',
                labelText: 'Item Name',
              ),
              onChanged: (value) {
                //  itemName = value;
                context.read<ItemFormProvider>().updateItemName(value);
                // else{
                  // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text("item name")));
                // }
              },
              // ? context.watch<ItemFormProvider>().itemNameError
              // : null, // Set to null when there's no error
              // validator: (value) {
              //   if (value == null || value.isEmpty) {
              //     return 'Please enter some text';
              //   }
              //   return null;
              // },
            ),
            TextFormField(
              controller: ItemCode,
              decoration: const InputDecoration(
                // icon: const Icon(Icons.code_off_rounded),
                hintText: 'Item Code',
                labelText: 'Item Code',
              ),
              onChanged: (value) {
                context.read<ItemFormProvider>().updateItemCode(value);
              },
            ),
            TextFormField(
              controller: PurchasePrice,
              keyboardType: TextInputType.phone,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: const InputDecoration(
                // icon: const Icon(Icons.phone),
                hintText: ' Purchase Price',
                labelText: 'Purchase Price',
              ),
              onChanged: (value) {
                context.read<ItemFormProvider>().updatePurchasePrice(value);//int.parse(value)
              },
            ),
            //  Container(
            //     padding: const EdgeInsets.only(left: 150.0, top: 40.0),
            //     ),
          ],
        ),
      ),
    );
  }

  // void clear() {
  //   // Clean up the TextEditingController when the widget is disposed.
  //   ItemName.clear();

  //   ItemCode.clear();
  //   PurchasePrice.clear();
  //   // textController1.dispose();
  //   // textController2.dispose();
  //   // textController3.dispose();
  //   // textController4.dispose();
  //   // textController5.dispose();
  //   // textController6.dispose();
  //   clear();
  // }
}

// import 'package:acounting_max/Provider/ItemFormDataProvider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:provider/provider.dart';

// // import 'item_form_provider.dart'; // Import the created provider
// class itemFormWidget extends StatefulWidget {
//   final itemFormWidget provider; // Pass the provider as a parameter

//   const itemFormWidget({super.key, required this.provider});

//   @override
//   State<itemFormWidget> createState() => _itemFormWidgetState();
// }

// class _itemFormWidgetState extends State<itemFormWidget> {
//   final _formKey = GlobalKey<FormState>();
//   // ...

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.only(left: 25.0, right: 25, top: 20.0),
//       child: Form(
//         key: _formKey,
//         child: Column(
//           // ...
//           children: <Widget>[
//             TextFormField(
//               decoration: const InputDecoration(
//                 hintText: 'Item Name',
//                 labelText: 'Item Name',
//               ),
//               onChanged: (value) {
//                 context.read<ItemFormProvider>().updateItemName(value);
//               },
//             ),
//             TextFormField(
//               decoration: const InputDecoration(
//                 hintText: 'Item Code',
//                 labelText: 'Item Code',
//               ),
//               onChanged: (value) {
//                 context.read<ItemFormProvider>().updateItemCode(value);
//               },
//             ),
//             TextFormField(
//               keyboardType: TextInputType.phone,
//               inputFormatters: [
//                 FilteringTextInputFormatter.digitsOnly,
//               ],
//               decoration: const InputDecoration(
//                 // icon: const Icon(Icons.phone),
//                 hintText: ' Purchase Price',
//                 labelText: 'Purchase Price',
//               ),
//               onChanged: (value) {
//                 context.read<ItemFormProvider>().updatePurchasePrice(int.parse(value));
//               },
//             ),
//             // ...
            
//           ],
//         ),
//       ),
//     );
//   }
// }



















































































// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:provider/provider.dart';

// class ItemFormData extends ChangeNotifier {
//   String itemName = '';
//   String itemCode = '';
//   String purchasePrice = '';

//   void updateItemName(String name) {
//     itemName = name;
//     notifyListeners();
//   }

//   void updateItemCode(String code) {
//     itemCode = code;
//     notifyListeners();
//   }

//   void updatePurchasePrice(String price) {
//     purchasePrice = price;
//     notifyListeners();
//   }

//   void clearFormData() {
//     itemName = '';
//     itemCode = '';
//     purchasePrice = '';
//     notifyListeners();
//   }
// }

// class ItemFormDataProvider extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => ItemFormData(),
//       child: _ItemFormDataProviderContent(),
//     );
//   }
// }

// class _ItemFormDataProviderContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final formData = Provider.of<ItemFormData>(context);

//     return itemFormWidget(formData: formData);
//   } 
// }

// class itemFormWidget extends StatefulWidget {
//   final ItemFormData formData;

//   const itemFormWidget({required this.formData, Key? key}) : super(key: key);

//   @override
//   State<itemFormWidget> createState() => _itemFormWidgetState();
// }

// class _itemFormWidgetState extends State<itemFormWidget> {
//   TextEditingController _textControllerinputItem = TextEditingController();
//   TextEditingController _textControllerinputCode = TextEditingController();
//   TextEditingController _textControllerinputPrice = TextEditingController();
//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.only(left: 25.0, right: 25, top: 20.0),
//       child: Form(
//         key: _formKey,
//         child: Column(
//           children: <Widget>[
//             TextFormField(
//               controller: _textControllerinputItem,
//               decoration: const InputDecoration(
//                 hintText: 'Item Name',
//                 labelText: 'Item Name',
//               ),
//               onChanged: (value) {
//                 widget.formData.updateItemName(value);
//               },
//             ),
//             TextFormField(
//               controller: _textControllerinputCode,
//               decoration: const InputDecoration(
//                 hintText: 'Item Code',
//                 labelText: 'Item Code',
//               ),
//               onChanged: (value) {
//                 widget.formData.updateItemCode(value);
//               },
//             ),
//             TextFormField(
//               controller: _textControllerinputPrice,
//               keyboardType: TextInputType.phone,
//               inputFormatters: [FilteringTextInputFormatter.digitsOnly],
//               decoration: const InputDecoration(
//                 hintText: ' Purchase Price',
//                 labelText: 'Purchase Price',
//               ),
//               onChanged: (value) {
//                 widget.formData.updatePurchasePrice(value);
//               },
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 // Save button action
//                 saveFormData(context, widget.formData);
//                 _textControllerinputItem.clear();
//                 _textControllerinputCode.clear();
//                 _textControllerinputPrice.clear();
//               },
//               child: const Text('Save'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void saveFormData(BuildContext context, ItemFormData formData) {
//     // Perform any desired actions with the form data
//     // For example, you can access formData.itemName, formData.itemCode, etc.
//     print(
//         'Saving: ${formData.itemName}, ${formData.itemCode}, ${formData.purchasePrice}');

//     // Clear form data after saving
//     formData.clearFormData();
//   }
// }
