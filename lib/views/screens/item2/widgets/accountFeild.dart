import 'package:acounting_max/Provider/ItemFormDataProvider.dart';
import 'package:acounting_max/Provider/item2FormDataProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
            width: MediaQuery.of(context).size.width * 0.9,
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Income Account',
                labelText: 'Income Account',
              ),
              onChanged: (value) {
                context.read<Item2FormProvider>().updateIncomeAccount(value);
              },
            ),
          ),
        ),
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 20),
            width: MediaQuery.of(context).size.width * 0.9,
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Inventory Account',
                labelText: 'Invetory Account',
              ),
              onChanged: (value) {
                context.read<Item2FormProvider>().updateCOGSAcount( value);
              },
            ),
          ),
        ),
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 20),
            width: MediaQuery.of(context).size.width * 0.9,
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'COGS Account',
                labelText: 'COGS Account',
              ),
              onChanged: (value) {
                context.read<Item2FormProvider>().updateInventoryAcount(value);
              },
            ),
          ),
        ),
      ],
    );
  }
}
