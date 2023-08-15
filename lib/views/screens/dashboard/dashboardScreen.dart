import 'package:acounting_max/views/screens/dashboard/widgets/DBAppBar.dart';
import 'package:acounting_max/views/screens/dashboard/widgets/body.dart';
import 'package:acounting_max/views/screens/vendor/vendorScreen.dart';
import 'package:flutter/material.dart';

class dashBoard extends StatefulWidget {
  const dashBoard({super.key});

  @override
  State<dashBoard> createState() => _dashBoardState();
}

class _dashBoardState extends State<dashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: DBAppBar(),
      ),
      body: SingleChildScrollView(
        // child: BillingForm()
        child: Column(
          children: [
             dashboardBody(
            name: 'New Vendor',
            dashboardPressFunction: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const VendorScreenState()))
                }),
          ],
        ),
        ),
    );
  }
}