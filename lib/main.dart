// import 'package:acounting_max/views/screens/customerPage/customer-screen.dart';

import 'package:acounting_max/Provider/ItemFormDataProvider.dart';
import 'package:acounting_max/Provider/PerchaseFormData.dart';
import 'package:acounting_max/Provider/SalesFormDataProvider.dart';
import 'package:acounting_max/views/screens/dashboard/dashboardScreen.dart';
// import 'package:acounting_max/views/screens/vendor/vendorScreen.dart';
// import 'package:acounting_max/views/screens/item1/itemScreeen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Provider/item2FormDataProvider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      Provider<ItemFormProvider>(create: (_) => ItemFormProvider()),
      Provider<Item2FormProvider>( create : (_)  => Item2FormProvider(),),
      Provider<ItemForm3Provider>( create : (_)  =>ItemForm3Provider()),
      Provider<SalesDataProvider>( create : (_)  =>SalesDataProvider()),
      //  ChangeNotifierProvider<ItemFormProvider>(create: (_) => ItemFormProvider()),
      // ChangeNotifierProvider<ItemFormProvider>(create: (_) => ItemFormProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: CustomerScreenWidget(),
      home: dashBoard(),
    );
// );

    // return MaterialApp(
    // home: itemScreenWidget(),
    // );
  }
}