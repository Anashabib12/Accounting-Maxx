import 'package:acounting_max/Provider/VendorAddShipping.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShippingForm extends StatefulWidget {
  const ShippingForm({super.key});

  @override
  State<ShippingForm> createState() => _ShippingFormState();
}

class _ShippingFormState extends State<ShippingForm> {
  int numberOfAddress = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20, top: 20),
          child: Text(
            'Shipping Address',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.06,
              fontWeight: FontWeight.bold,
              // decoration: TextDecoration.underline
            ),
          ),
        ),
        // const SizedBox(height: 20),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: numberOfAddress,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey.shade50,
                ),
                child: Form(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Address',
                            labelText: 'Address',
                          ),
                          onChanged: (value) {
                            context
                              .read<VenderAddShippingProvider>()
                              .updateAddress(value);
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
                            context
                              .read<VenderAddShippingProvider>().updateSate(value);
                          },
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'City',
                            labelText: 'City',
                          ),
                          onChanged: (value) {
                            context
                              .read<VenderAddShippingProvider>().updateCity(value);
                          },
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Country ',
                            labelText: 'Country ',
                          ),
                          onChanged: (value) {
                            context
                              .read<VenderAddShippingProvider>().updateCountry(value);
                          },
                        ),
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                            hintText: 'Zip Code',
                            labelText: 'Zip Code',
                          ),
                          onChanged: (value) {
                            context
                              .read<VenderAddShippingProvider>().updateZipCode(value);
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
                  child: const Icon(Icons.add_circle_outline)),
            ],
          ),
        )
      ],
    );
  }
}
