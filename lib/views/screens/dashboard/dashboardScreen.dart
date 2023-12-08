import 'package:acounting_max/views/screens/customerListscreen/widget/customerList.dart';
import 'package:acounting_max/views/screens/customerPage/customer-screen.dart';
import 'package:acounting_max/views/screens/dashboard/widgets/DBAppBar.dart';
import 'package:acounting_max/views/screens/dashboard/widgets/body.dart';
import 'package:acounting_max/views/screens/item1/itemScreeen.dart';
import 'package:acounting_max/views/screens/vendor/vendorScreen.dart';
import 'package:acounting_max/views/screens/Vendor_List/VendorListScreen.dart';
import 'package:acounting_max/views/screens/ItemListScreen/ItemList.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:provider/provider.dart';

class dashBoard extends StatefulWidget {
  const dashBoard({super.key});

  @override
  State<dashBoard> createState() => _dashBoardState();
}

class _dashBoardState extends State<dashBoard> {
  late Isar isar;

  @override
  void initState() {
    super.initState();
    // Access the Isar instance
    isar = Provider.of<Isar>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: DBAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            dashboardBody(
              name: 'Item List',
              dashboardPressFunction: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ItemList(),
                  ),
                );
              },
            ),
            dashboardBody(
              name: 'Customer List',
              dashboardPressFunction: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CustomerList(),
                  ),
                );
              },
            ),
            dashboardBody(
              name: 'Vendor List',
              dashboardPressFunction: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const VendorList(),
                  ),
                );
              },
            ),
            dashboardBody(
              name: 'New Vendor',
              dashboardPressFunction: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const VendorScreenState(),
                  ),
                );
              },
            ),
            dashboardBody(
              name: 'New Item',
              dashboardPressFunction: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const itemScreenWidget(),
                  ),
                );
              },
            ),
            dashboardBody(
              name: 'New customer',
              dashboardPressFunction: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CustomerScreenWidget(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
