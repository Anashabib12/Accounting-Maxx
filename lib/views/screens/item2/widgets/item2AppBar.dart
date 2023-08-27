import 'package:acounting_max/Provider/ItemFormDataProvider.dart';
import 'package:acounting_max/Provider/item2FormDataProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Item2AppBar extends StatefulWidget {
  const Item2AppBar({super.key});

  @override
  State<Item2AppBar> createState() => _Item2AppBarState();
}

class _Item2AppBarState extends State<Item2AppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      // leading: Icon(Icons.arrow_back),
      title: const Text('  Accounts'),
      // name: Text('My App'),
              backgroundColor: const Color(0xFF50C2C9),
 // Change this color to customize the app bar background color
           actions: [
             IconButton(
            icon: const Icon(Icons.save),
            tooltip: 'Comment Icon',
            onPressed: () {
               final formProvider = context.read<Item2FormProvider>();
                if (formProvider.validateItemName(formProvider.Income_account,formProvider.COGS_account,formProvider.Inventory_account) == null) {
                  formProvider.Item2Save();
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text("successfully save")));
                }
                // else if(){

                // }
                else{
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text("Please fill all Mandatory fields")));
                }
              //  context.read<Item2FormProvider>().Item2Save();
            },
          ), //IconButton
            // Text(
            // "Save",
            // style: TextStyle(
            //     // fontSize: MediaQuery.of(context).size.width * 0.6,
            //     // fontWeight: FontWeight.bold,
            //     ),
          // ),
          ]
    );
  }
}