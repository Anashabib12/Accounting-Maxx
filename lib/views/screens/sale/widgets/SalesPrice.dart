import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SalePrice extends StatefulWidget {
  const SalePrice({super.key});

  @override
  State<SalePrice> createState() => _SalePriceState();
}

class _SalePriceState extends State<SalePrice> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          Container(
          margin: EdgeInsets.only(top: 20.0, left: 15,bottom: 15),
          child: const Row(
            children: [
              Text(
                "Sales Price",
                style: TextStyle(
                  fontSize: 18, // Set the font size here
                ),
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          child: TextFormField(
            keyboardType: TextInputType.phone,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
            decoration: const InputDecoration(
              // icon: const Icon(Icons.phone),
              hintText: ' Sales Price',
              labelText: 'Sales Price',
            ),
          ),
        ),
      ],
    );
  }
}
