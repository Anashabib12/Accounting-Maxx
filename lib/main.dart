
// import 'package:acounting_max/views/screens/customerPage/customer-screen.dart';

import 'package:acounting_max/views/screens/dashboard/dashboardScreen.dart';
// import 'package:acounting_max/views/screens/vendor/vendorScreen.dart';
import 'package:acounting_max/views/screens/item1/itemScreeen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: CustomerScreenWidget(),
      home:dashBoard() ,
    );
      
      
      );

    // return MaterialApp(
    // home: itemScreenWidget(),
    // );
  }
}
