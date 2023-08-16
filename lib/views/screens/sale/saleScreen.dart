import 'package:acounting_max/views/screens/sale/widgets/SaleAppBar.dart';
import 'package:acounting_max/views/screens/sale/widgets/SaleDropDown.dart';
import 'package:acounting_max/views/screens/sale/widgets/SaleQuantityPrice.dart';
import 'package:acounting_max/views/screens/sale/widgets/SalesPrice.dart';
import 'package:acounting_max/views/screens/sale/widgets/SalesTexterea.dart';
import 'package:flutter/material.dart';


class SaleScreen extends StatefulWidget {
  const SaleScreen({super.key});

  @override
  State<SaleScreen> createState() => _SaleScreenState();
}

class _SaleScreenState extends State<SaleScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(65),
             child: SaleAppBar()),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // SaleDropdown(),
              SaleTexterea(),
              SalePrice(),
              SaleQtyPrice(),
            ],
          ),
        )
        );
  }
}
