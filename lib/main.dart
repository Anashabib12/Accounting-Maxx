// import 'package:acounting_max/views/screens/customerPage/customer-screen.dart';

import 'package:acounting_max/Provider/CustomerAddBilling.dart';
import 'package:acounting_max/Provider/CustomerAddShipping.dart';
import 'package:acounting_max/Provider/CustomerContactPerson.dart';
import 'package:acounting_max/Provider/CustomerProvider.dart';
import 'package:acounting_max/Provider/ItemFormDataProvider.dart';
import 'package:acounting_max/Provider/PerchaseFormData.dart';
import 'package:acounting_max/Provider/SalesFormDataProvider.dart';
import 'package:acounting_max/Provider/VendorAddShipping.dart';
import 'package:acounting_max/Provider/VendorAddbillingProvider.dart';
import 'package:acounting_max/Provider/VendorContactPerson.dart';
import 'package:acounting_max/Provider/VendorProvider.dart';
import 'package:acounting_max/models/modelDB.dart';
import 'package:acounting_max/views/screens/dashboard/dashboardScreen.dart';
// import 'package:acounting_max/views/screens/vendor/vendorScreen.dart';
// import 'package:acounting_max/views/screens/item1/itemScreeen.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:provider/provider.dart';
import 'Provider/item2FormDataProvider.dart';
// import 'package:acounting_max/models/modelDB.dart';

Future<void> main() async {
  // Initialize Isar
  WidgetsFlutterBinding.ensureInitialized();
  final isar = await IsarService().openDB();

  Provider.debugCheckInvalidValueType = null;
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => ItemFormProvider()),

      Provider<Isar>.value(value: isar),
      Provider<IsarService>(create: (_) => IsarService()),

      // Provider<DatabaseService>(create: (_) => DatabaseService()),
      //    ChangeNotifierProvider(create: (context) => Item2FormProvider()),
      // ChangeNotifierProvider(
      //   create: (context) {
      //     final item2FormProvider = Provider.of<Item2FormProvider>(context, listen: false);
      //     return ItemFormProvider(item2FormProvider); }),// this is the another provider file
      Provider<ItemFormProvider>(create: (_) => ItemFormProvider()),
      Provider<Item2FormProvider>(
        create: (_) => Item2FormProvider(),
      ),
      Provider<ItemForm3Provider>(create: (_) => ItemForm3Provider()),
      Provider<SalesDataProvider>(create: (_) => SalesDataProvider()),
      //  ChangeNotifierProvider<ItemFormProvider>(create: (_) => ItemFormProvider()),
      // ChangeNotifierProvider<ItemFormProvider>(create: (_) => ItemFormProvider()),

      // Vendor provider
      Provider<VenderProvider>(create: (_) => VenderProvider()),
      Provider<VenderAddBillingProvider>(
          create: (_) => VenderAddBillingProvider()),
      Provider<VenderAddShippingProvider>(
          create: (_) => VenderAddShippingProvider()),
      Provider<VenderContactPersonProvider>(
          create: (_) => VenderContactPersonProvider()),
      // Customer provider
      Provider<CustomerForm>(create: (_) => CustomerForm()),
      Provider<CustomerAddBillingProvider>(
          create: (_) => CustomerAddBillingProvider()),
      Provider<CustomerAddShippingProvider>(
          create: (_) => CustomerAddShippingProvider()),
      Provider<CustomerContactPersonProvider>(
          create: (_) => CustomerContactPersonProvider()),
      // Provider<VenderAddBillingProvider>( create : (_)  =>VenderAddBillingProvider()),
      // Provider<VenderAddShippingProvider>( create : (_)  =>VenderAddShippingProvider()),
      // Provider<VenderContactPersonProvider>( create : (_)  =>VenderContactPersonProvider()),
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
