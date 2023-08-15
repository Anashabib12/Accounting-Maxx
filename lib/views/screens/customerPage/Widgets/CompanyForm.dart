import 'package:flutter/material.dart';

import 'package:acounting_max/views/screens/Billingpage/BillingScreen.dart';
import 'package:acounting_max/views/screens/Shippingpage/shippingscreen.dart';
import 'package:acounting_max/views/screens/contactpage/contactscreen.dart';
import 'CompanyButton.dart';
import 'otherDetails.dart';

class CompanyForm extends StatefulWidget {
const CompanyForm({super.key, Key? k});

  @override
  State<CompanyForm> createState() => _CompanyFormState();
}

class _CompanyFormState extends State<CompanyForm> {
  final List<String> Category = [
    'Wholesaler',
    'Retailer',
  ];
  //  {
  String _selectedCustomerType = 'company';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.centerStart,
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Row(
              children: [
                Radio<String>(
                  value: 'company',
                  groupValue: _selectedCustomerType,
                  onChanged: (value) {
                    setState(() {
                      _selectedCustomerType = 'company';
                    });
                  },
                ),
                const Text('Company'),
                const SizedBox(width: 20),
                Radio<String>(
                  value: 'individual',
                  groupValue: _selectedCustomerType,
                  onChanged: (value) {
                    setState(() {
                      _selectedCustomerType = 'individual';
                    });
                  },
                ),
                const Text('Individual'),
              ],
            ),

            Container(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.03,
                horizontal: MediaQuery.of(context).size.width * 0.05,
              ),
              child: Column(children: [
                // Common Fields
                // const SizedBox(height: 35),
                (_selectedCustomerType == 'company')
                    ? TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Company Name',
                          labelText: 'Company Name',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'This field is required.';
                          }
                          return null;
                        })
                    : const SizedBox(),
                const SizedBox(height: 25),

                // Category Dropdown
                DropdownButtonFormField<String>(
                  value: Category[0],
                  onChanged: (newValue) {
                    setState(() {});
                  },
                  items: Category.map<DropdownMenuItem<String>>((Category) {
                    return DropdownMenuItem<String>(
                      value: Category,
                      child: Text(Category),
                    );
                  }).toList(),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Category',
                    contentPadding: EdgeInsets.symmetric(horizontal: 12),
                  ),
                ),
                TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'First  Name',
                      labelText: 'First Name',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'This field is required.';
                      }
                      return null;
                    }),

                   TextFormField(
                    decoration: const InputDecoration(
                      hintText: ' Middle Name',
                      labelText: 'Middle Name',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'This field is required.';
                      }
                      return null;
                    }),
                    
                TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Last Name',
                      labelText: 'Last Name',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'This field is required.';
                      }
                      return null;
                    }),

                // (_selectedCustomerType == 'company')
                //     ? TextFormField(
                //         decoration: const InputDecoration(
                //           hintText: 'Email',
                //           labelText: 'Email',
                //         ),
                //         validator: (value) {
                //           if (value!.isEmpty) {
                //             return 'This field is required.';
                //           }
                //           return null;
                //         })
                //     : const SizedBox(),

                // Add more company-specific fields here if needed.
                // Render Individual Information Fields if selectedVendorType is 'individual'
                
              
              
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Main Phone',
                      labelText: 'Main Phone',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'This field is required.';
                      }
                      return null;
                    }),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Work  Phone',
                    labelText: 'Work Phone',
                  ),
                ),
                TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Email',
                      labelText: 'Email',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'This field is required.';
                      }
                      return null;
                    }),
                // Add more individual-specific fields here if needed.

                const OtherDetails(),
                CompanyButton(
                    backgroundColor: Colors.transparent,
                    name: 'Add Billing Address',
                    CompanyPressFunction: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const BillingScreen()))
                        }),

                CompanyButton(
                    name: 'Add Shipping Address',
                    CompanyPressFunction: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const shippingscreen()))
                        },
                    backgroundColor: Color.fromARGB(255, 13, 218, 233)),
                (_selectedCustomerType == 'company')
                    ? CompanyButton(
                        name: 'Add Contact Details',
                        CompanyPressFunction: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const contactscreen()))
                            },
                        backgroundColor:
                            const Color.fromARGB(255, 76, 168, 175))
                    : const SizedBox(),
                CompanyButton(
                  backgroundColor: Colors.transparent,
                  name: 'Communication',
                  CompanyPressFunction: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BillingScreen()))
                  },
                )
              ]
                  // ],
                  ),
            )
            //////////////////////////////////////////////////////////////////////////////////////////
            // Render Company Information Fields if selectedVendorType is 'company'
          ],
        ),
      ),
    );
  }
}
