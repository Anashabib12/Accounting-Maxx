import 'package:flutter/material.dart';

class AccountField extends StatefulWidget {
  const AccountField({super.key});

  @override
  State<AccountField> createState() => _AccountFieldState();
}

class _AccountFieldState extends State<AccountField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 20),
            width: MediaQuery.of(context).size.width*0.9,
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                 hintText: 'Income Account',
                    labelText: 'Income Account',
                )
          
            ),
          ),
        ),
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 20),
            width: MediaQuery.of(context).size.width*0.9,
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                 hintText: 'Inventory Account',
                    labelText: 'Invetory Account',
                )
          
            ),
          ),
        ),
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 20),
            width: MediaQuery.of(context).size.width*0.9,
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                 hintText: 'COGS Account',
                    labelText: 'COGS Account',
                )
          
            ),
          ),
        ),
      ],
    );
  }
}