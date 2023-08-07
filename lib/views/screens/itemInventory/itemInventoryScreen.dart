import 'package:acounting_max/views/screens/itemInventory/widget/inventoryAppBar.dart';
import 'package:acounting_max/views/screens/itemInventory/widget/inventoryButton.dart';
import 'package:acounting_max/views/screens/itemInventory/widget/inventoryDropdown.dart';
import 'package:acounting_max/views/screens/itemInventory/widget/itemLocation.dart';
import 'package:acounting_max/views/screens/itemInventory/widget/itemTexterea.dart';
import 'package:acounting_max/views/screens/itemInventory/widget/venderdropdown.dart';
import 'package:flutter/material.dart';

import '../item2/itemScreen2.dart';
import '../item3/Itemscreen3.dart';

class ItemINventoryScreen extends StatefulWidget {
  const ItemINventoryScreen({super.key});

  @override
  State<ItemINventoryScreen> createState() => _ItemINventoryScreenState();
}

class _ItemINventoryScreenState extends State<ItemINventoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: PreferredSize(
            preferredSize: Size.fromHeight(65),
            child: const ItemInventoryAppBar()),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: const InventoryDropdown(),
                  ),
                  Container(
                    child: const ItemTextereaWidgets(),
                  ),
                  Container(
                    child: VenderDropDown(),
                  ),
                  Container(
                    child: ItemLocation(),
                  ),
                   InventoryButtonWidgets(
                name: "Accounts",
                inventorypressFunction: () => {
                  
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const itemScreen2()),
                  )
                },
              ),
              InventoryButtonWidgets(
                name: "Comunication",
                inventorypressFunction: () => {
                  
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ItemScreen3()),
                  )
                },
              ),
                ],
              )
              ),
    );
  }
}