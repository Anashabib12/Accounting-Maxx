import 'package:acounting_max/Provider/PerchaseFormData.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemInventoryAppBar extends StatefulWidget {
  const ItemInventoryAppBar({super.key});

  @override
  State<ItemInventoryAppBar> createState() => _ItemInventoryAppBarState();
}

class _ItemInventoryAppBarState extends State<ItemInventoryAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        // leading: Icon(Icons.arrow_back),
        title: const Text('  Purchase'),
        // name: Text('My App'),
        backgroundColor: const Color(0xFF50C2C9),
        // Change this color to customize the app bar background color
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            tooltip: 'Comment Icon',
            onPressed: () {
                 final formProvider = context.read<ItemForm3Provider>();
              if (formProvider.validateItemName(formProvider.selectedCostingOption,formProvider.selectedOptionVender, formProvider.purchaseDescription) ==
                  null) {
                formProvider.purchasesave();
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("successfully save")));
              }
              // else if(formProvider.validateItemName(formProvider.itemCode) == null){

              // }
              else {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Please fill all Mandatory fields")));
              }
              // context.read<ItemForm3Provider>().purchasesave();
            },
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
