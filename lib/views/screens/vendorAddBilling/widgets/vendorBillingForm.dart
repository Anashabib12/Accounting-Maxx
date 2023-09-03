// ignore: file_names
import 'package:acounting_max/Provider/VendorAddbillingProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BillingForm extends StatefulWidget {
  const BillingForm({super.key});

  @override
  State<BillingForm> createState() => _BillingFormState();
}

class _BillingFormState extends State<BillingForm> {
  // List<Widget> _formSections= [];
  // int _sectionCount = 1;
  int numberOfAddress = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20, top: 20),
          child: Text(
            'Billing Address',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.06,
              fontWeight: FontWeight.bold,
              // decoration: TextDecoration.underline
            ),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: numberOfAddress,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blueGrey.shade50,
                    borderRadius: BorderRadius.circular(10)),
                child: Form(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Address',
                            labelText: 'Address',
                          ),
                          onChanged: (value) {
                            context.read<VenderAddBillingProvider>().updateAddress(value);
                          },
                        ),
                        // TextFormField(
                        //   decoration: const InputDecoration(
                        //     hintText: 'Address 2',
                        //     labelText: 'Address 2',
                        //   ),
                        // ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'State',
                            labelText: 'State',
                          ),
                           onChanged: (value) {
                            context.read<VenderAddBillingProvider>().updateSate(value);
                          },
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'City',
                            labelText: 'City',
                          ),
                           onChanged: (value) {
                            context.read<VenderAddBillingProvider>().updateCity(value);
                          },
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Country ',
                            labelText: 'Country ',
                          ),
                           onChanged: (value) {
                            context.read<VenderAddBillingProvider>().updateCountry(value);
                          },
                        ),
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                            hintText: 'Zip Code',
                            labelText: 'Zip Code',
                          ),
                           onChanged: (value) {
                            context.read<VenderAddBillingProvider>().updateZipCode(value);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  setState(() {
                    numberOfAddress++;
                  });
                },
                child: const Icon(Icons.add_circle_outline),
              ),
            ],
          ),
        )
      ],
    );
  }
}
