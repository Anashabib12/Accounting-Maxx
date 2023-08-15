// import 'package:acounting_max/views/screens/item2/widgets/item2AppBar.dart';
import 'package:acounting_max/views/screens/item3/widget/Item3AppBar.dart';
import 'package:acounting_max/views/screens/item3/widget/com-button.dart';
import 'package:acounting_max/views/screens/item3/widget/filepicker.dart';
import 'package:flutter/material.dart';

class ItemScreen3 extends StatefulWidget {
  const ItemScreen3({super.key});

  @override
  State<ItemScreen3> createState() => _ItemScreen3State();
}

class _ItemScreen3State extends State<ItemScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(65), child: const AppBar3()),
        body: SingleChildScrollView(
            child: Column(
          children: [
            comunicationFileSelectionButton(),
             CommunicationButton(),
          ],
        )));
  }
}
