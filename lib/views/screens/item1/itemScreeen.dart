// import 'package:acounting_max/Provider/ItemFormDataProvider.dart';
import 'package:acounting_max/views/screens/SystemInfo/Systeminfo.dart';
import 'package:acounting_max/views/screens/item1/widgets/appBar.dart';
import 'package:acounting_max/views/screens/item1/widgets/itemButton.dart';
import 'package:acounting_max/views/screens/item1/widgets/itemRadio.dart';
import 'package:acounting_max/views/screens/item1/widgets/itemdropdown.dart';
// import 'package:acounting_max/views/screens/item1/widgets/itemdropdown.dart';
import 'package:acounting_max/views/screens/item1/widgets/itemform.dart';
import 'package:acounting_max/views/screens/item1/widgets/uploadImg.dart';
import 'package:acounting_max/views/screens/item2/itemScreen2.dart';
import 'package:acounting_max/views/screens/item3/Itemscreen3.dart';
import 'package:flutter/material.dart';

import '../itemInventory/itemInventoryScreen.dart';
import '../sale/saleScreen.dart';

class itemScreenWidget extends StatefulWidget {
  const itemScreenWidget({super.key});

  @override
  State<itemScreenWidget> createState() => _itemScreenWidgetState();
}

class _itemScreenWidgetState extends State<itemScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(65),
            child:  AppBarwidgets(
            )), // this is the app bar
        body: SingleChildScrollView(
          child: Column(
            children: [
              //this container is upload image
              Container(
                color: Color.fromARGB(255, 255, 255, 255),
                child: const UloadImgWidget(),
              ),
              //this container is item form
              const itemFormWidget(),
              // ItemFormProvider(), //this is for provider
              const ItemDropdown(),
              const itemRadioWidgets(),
              // all three buttons
              ItemButtonWidgets(
                name: "Accounts",
                pressFunction: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const itemScreen2()),
                  )
                },
              ),
              ItemButtonWidgets(
                name: "Communications",
                pressFunction: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ItemScreen3()),
                  )
                },
              ),
              ItemButtonWidgets(
                name: "Purchase",
                pressFunction: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ItemINventoryScreen()),
                  )
                },
              ),
              ItemButtonWidgets(
                name: "Sales",
                pressFunction: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SaleScreen()),
                  )
                },
              ),
              ItemButtonWidgets(
                name: "System Information",
                pressFunction: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SystemInfo()),
                  )
                },
              ),
            ],
          ),
        ));
  }
}

// // import 'package:acounting_max/Provider/ItemFormDataProvider.dart';
// import 'package:acounting_max/Provider/ItemFormDataProvider.dart';
// import 'package:acounting_max/views/screens/SystemInfo/Systeminfo.dart';
// import 'package:acounting_max/views/screens/item1/widgets/appBar.dart';
// import 'package:acounting_max/views/screens/item1/widgets/itemButton.dart';
// import 'package:acounting_max/views/screens/item1/widgets/itemRadio.dart';
// import 'package:acounting_max/views/screens/item1/widgets/itemdropdown.dart';
// // import 'package:acounting_max/views/screens/item1/widgets/itemdropdown.dart';
// import 'package:acounting_max/views/screens/item1/widgets/itemform.dart';
// import 'package:acounting_max/views/screens/item1/widgets/uploadImg.dart';
// import 'package:acounting_max/views/screens/item2/itemScreen2.dart';
// import 'package:acounting_max/views/screens/item3/Itemscreen3.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import '../itemInventory/itemInventoryScreen.dart';
// import '../sale/saleScreen.dart';

// class itemScreenWidget extends StatefulWidget {
//   const itemScreenWidget({super.key});

//   @override
//   State<itemScreenWidget> createState() => _itemScreenWidgetState();
// }

// class _itemScreenWidgetState extends State<itemScreenWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//           preferredSize: const Size.fromHeight(65),
//           child: AppBarwidgets(
//             testFunction: () {
//               print("Testing Save Function");
//             },
//           )), // this is the app bar
//       // body:
//       body: ChangeNotifierProvider(
//         create: (context) => ItemFormProvider(),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               // ...
//               // Consumer<ItemFormProvider>(
//               //   builder: (context, provider, _) {
//               //     return itemFormWidget(
//               //       provider: provider,
//               //     );
//               //   },
//               // ),
//               // ...
//             ],
//           ),
//         ),
//       ),
//       //  SingleChildScrollView(
//       //   child: Column(
//       //     children: [

//       //       // //this container is upload image
//       //       // Container(
//       //       //   color: Color.fromARGB(255, 255, 255, 255),
//       //       //   child: const UloadImgWidget(),
//       //       // ),
//       //       // //this container is item form
//       //       // const itemFormWidget(),
//       //       // // ItemFormProvider(), //this is for provider
//       //       // const ItemDropdown(),
//       //       // const itemRadioWidgets(),
//       //       // // all three buttons
//       //       // ItemButtonWidgets(
//       //       //   name: "Accounts",
//       //       //   pressFunction: () => {
//       //       //     Navigator.push(
//       //       //       context,
//       //       //       MaterialPageRoute(
//       //       //           builder: (context) => const itemScreen2()),
//       //       //     )
//       //       //   },
//       //       // ),
//       //       // ItemButtonWidgets(
//       //       //   name: "Communications",
//       //       //   pressFunction: () => {
//       //       //     Navigator.push(
//       //       //       context,
//       //       //       MaterialPageRoute(
//       //       //           builder: (context) => const ItemScreen3()),
//       //       //     )
//       //       //   },
//       //       // ),
//       //       // ItemButtonWidgets(
//       //       //   name: "Purchase",
//       //       //   pressFunction: () => {
//       //       //     Navigator.push(
//       //       //       context,
//       //       //       MaterialPageRoute(
//       //       //           builder: (context) => const ItemINventoryScreen()),
//       //       //     )
//       //       //   },
//       //       // ),
//       //       // ItemButtonWidgets(
//       //       //   name: "Sales",
//       //       //   pressFunction: () => {
//       //       //     Navigator.push(
//       //       //       context,
//       //       //       MaterialPageRoute(builder: (context) => const SaleScreen()),
//       //       //     )
//       //       //   },
//       //       // ),
//       //       // ItemButtonWidgets(
//       //       //   name: "System Information",
//       //       //   pressFunction: () => {
//       //       //     Navigator.push(
//       //       //       context,
//       //       //       MaterialPageRoute(builder: (context) => const SystemInfo()),
//       //       //     )
//       //       //   },
//       //       // ),
//       //     ],
//       //   ),
//       // )
//     );
//   }
// }
