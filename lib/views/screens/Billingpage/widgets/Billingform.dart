// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class Billingform extends StatefulWidget {
//   const Billingform({super.key});

//   @override
//   State<Billingform> createState() => _BillingformState();
// }

// class _BillingformState extends State<Billingform> {
//   List<Widget> _formFields = [];

//   @override
//   void initState() {
//     super.initState();
//     _formFields.add(_buildFormField(_formFields.length));
//   }

//   Widget _buildFormField(int formIndex) {
//     return Container(
//       color: Colors.grey[200], // Light grey color
//       padding: const EdgeInsets.all(16.0),
//       margin: const EdgeInsets.only(bottom: 16.0),
//       child: Column(
//         children: [
//           TextFormField(
//             decoration: const InputDecoration(
//               labelText: 'Address 1',
//             ),
//             validator: (value) {
//               if (value!.isEmpty) {
//                 return 'This field is required.';
//               }
//               return null;
//             },
//           ),
//           TextFormField(
//             decoration: const InputDecoration(
//               labelText: 'Address 2',
//             ),
//           ),
//           TextFormField(
//             decoration: const InputDecoration(
//               labelText: 'City',
//             ),
//             validator: (value) {
//               if (value!.isEmpty) {
//                 return 'This field is required.';
//               }
//               return null;
//             },
//           ),
//           TextFormField(
//             decoration: const InputDecoration(
//               labelText: 'State',
//             ),
//             validator: (value) {
//               if (value!.isEmpty) {
//                 return 'This field is required.';
//               }
//               return null;
//             },
//           ),
//           TextFormField(
//             keyboardType: TextInputType.phone,
//             inputFormatters: [
//               FilteringTextInputFormatter.digitsOnly,
//             ],
//             decoration: const InputDecoration(
//               labelText: 'Zip Code',
//             ),
//             validator: (value) {
//               if (value!.isEmpty) {
//                 return 'This field is required.';
//               }
//               return null;
//             },
//           ),
//           TextFormField(
//             decoration: const InputDecoration(
//               labelText: 'Country',
//             ),
//             validator: (value) {
//               if (value!.isEmpty) {
//                 return 'This field is required.';
//               }
//               return null;
//             },
//           ),
//         ],
//       ),
//     );
//   }

//   void _addFormField() {
//     setState(() {
//       _formFields.add(_buildFormField(_formFields.length));
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         children: [
//           for (var form in _formFields) form,
//           InkWell(
//             onTap: _addFormField,
//             child: Container(
//               padding: EdgeInsets.all(16.0),
//               decoration: BoxDecoration(
//                 color: Color.fromARGB(255, 64, 187, 181),
//                 borderRadius: BorderRadius.circular(28.0),
//               ),
//               child: Icon(
//                 Icons.add,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }





// ignore: file_names
// import 'package:acounting_max/Provider/VendorAddbillingProvider.dart';
import 'package:acounting_max/Provider/CustomerAddBilling.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Billingform extends StatefulWidget {
  const Billingform({super.key});

  @override
  State<Billingform> createState() => _BillingformState();
}

class _BillingformState extends State<Billingform> {
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
                            context.read<CustomerAddBillingProvider>().updateAddress(value);
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
                            context.read<CustomerAddBillingProvider>().updateSate(value);
                          },
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'City',
                            labelText: 'City',
                          ),
                           onChanged: (value) {
                            context.read<CustomerAddBillingProvider>().updateCity(value);
                          },
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Country ',
                            labelText: 'Country ',
                          ),
                           onChanged: (value) {
                            context.read<CustomerAddBillingProvider>().updateCountry(value);
                            // context.read<VenderAddBillingProvider>().updateCountry(value);
                          },
                        ),
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                            hintText: 'Zip Code',
                            labelText: 'Zip Code',
                          ),
                           onChanged: (value) {
                            context.read<CustomerAddBillingProvider>().updateZipCode(value);
                            // context.read<VenderAddBillingProvider>().updateZipCode(value);
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
