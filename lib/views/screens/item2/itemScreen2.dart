import 'package:acounting_max/views/screens/item2/widgets/accountFeild.dart';
import 'package:acounting_max/views/screens/item2/widgets/item2AppBar.dart';
import 'package:flutter/material.dart';

class itemScreen2 extends StatefulWidget {
  const itemScreen2({super.key});

  @override
  State<itemScreen2> createState() => _itemScreen2State();
}

class _itemScreen2State extends State<itemScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: PreferredSize(
            preferredSize: Size.fromHeight(65),
            child: const Item2AppBar()),
             body: SingleChildScrollView(
          child: Column(
            children: [
              Container(child: AccountField(),)
            ],
          )
          )

    );
  }
}