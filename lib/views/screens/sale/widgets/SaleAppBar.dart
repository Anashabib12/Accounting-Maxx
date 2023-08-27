import 'package:acounting_max/Provider/SalesFormDataProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SaleAppBar extends StatefulWidget {
  const SaleAppBar({super.key});

  @override
  State<SaleAppBar> createState() => _SaleAppBarState();
}

class _SaleAppBarState extends State<SaleAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      // leading: Icon(Icons.arrow_back),
      title: const Text('  sales'),
      // name: Text('My App'),
        backgroundColor: const Color(0xFF50C2C9),
       actions: [
             IconButton(
            icon: const Icon(Icons.save),
            tooltip: 'Comment Icon',
            onPressed: () {
               final formProvider = context.read<SalesDataProvider>();
              if (formProvider.validateItemName(formProvider.salesDescription,
                      formProvider.salesPrise, formProvider.BasePrice, formProvider.AddQty10, formProvider.DiscountPrice10) ==
                  null) {
                formProvider.SalesSave();
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("successfully save")));
              }
              // else if(formProvider.validateItemName(formProvider.itemCode) == null){

              // }
              else {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Please fill all Mandatory fields")));
              }
              // context.read<SalesDataProvider>().SalesSave();
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
