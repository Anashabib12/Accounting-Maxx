// import 'package:acounting_max/views/screens/SystemInfo/Systeminfo.dart';
// import 'package:acounting_max/views/screens/item3/Itemscreen3.dart';
// import 'package:flutter/material.dart';

// import 'package:acounting_max/views/screens/Billingpage/BillingScreen.dart';
// import 'package:acounting_max/views/screens/Shippingpage/shippingscreen.dart';
// import 'package:acounting_max/views/screens/contactpage/contactscreen.dart';
// import 'CompanyButton.dart';
// import 'otherDetails.dart';

// class CompanyForm extends StatefulWidget {
// const CompanyForm({super.key, Key? k});

//   @override
//   State<CompanyForm> createState() => _CompanyFormState();
// }

// class _CompanyFormState extends State<CompanyForm> {
//   final List<String> Category = [
//     'Wholesaler',
//     'Retailer',
//   ];
//   //  {
//   String _selectedCustomerType = 'company';
//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       alignment: AlignmentDirectional.centerStart,
//       child: Form(
//         key: _formKey,
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Radio<String>(
//                   value: 'company',
//                   groupValue: _selectedCustomerType,
//                   onChanged: (value) {
//                     setState(() {
//                       _selectedCustomerType = 'company';
//                     });
//                   },
//                 ),
//                 const Text('Company'),
//                 const SizedBox(width: 20),
//                 Radio<String>(
//                   value: 'individual',
//                   groupValue: _selectedCustomerType,
//                   onChanged: (value) {
//                     setState(() {
//                       _selectedCustomerType = 'individual';
//                     });
//                   },
//                 ),
//                 const Text('Individual'),
//               ],
//             ),

//             Container(
//               padding: EdgeInsets.symmetric(
//                 vertical: MediaQuery.of(context).size.height * 0.03,
//                 horizontal: MediaQuery.of(context).size.width * 0.05,
//               ),
//               child: Column(children: [
//                 // Common Fields
//                 // const SizedBox(height: 35),
//                 (_selectedCustomerType == 'company')
//                     ? TextFormField(
//                         decoration: const InputDecoration(
//                           hintText: 'Company Name',
//                           labelText: 'Company Name',
//                         ),
//                         validator: (value) {
//                           if (value!.isEmpty) {
//                             return 'This field is required.';
//                           }
//                           return null;
//                         })
//                     : const SizedBox(),
//                 const SizedBox(height: 25),

//                 // Category Dropdown
//                 DropdownButtonFormField<String>(
//                   value: Category[0],
//                   onChanged: (newValue) {
//                     setState(() {});
//                   },
//                   items: Category.map<DropdownMenuItem<String>>((Category) {
//                     return DropdownMenuItem<String>(
//                       value: Category,
//                       child: Text(Category),
//                     );
//                   }).toList(),
//                   decoration: const InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'Category',
//                     contentPadding: EdgeInsets.symmetric(horizontal: 12),
//                   ),
//                 ),
//                 TextFormField(
//                     decoration: const InputDecoration(
//                       hintText: 'First  Name',
//                       labelText: 'First Name',
//                     ),
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'This field is required.';
//                       }
//                       return null;
//                     }),

//                    TextFormField(
//                     decoration: const InputDecoration(
//                       hintText: ' Middle Name',
//                       labelText: 'Middle Name',
//                     ),
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'This field is required.';
//                       }
//                       return null;
//                     }),
                    
//                 TextFormField(
//                     decoration: const InputDecoration(
//                       hintText: 'Last Name',
//                       labelText: 'Last Name',
//                     ),
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'This field is required.';
//                       }
//                       return null;
//                     }),

//                 // (_selectedCustomerType == 'company')
//                 //     ? TextFormField(
//                 //         decoration: const InputDecoration(
//                 //           hintText: 'Email',
//                 //           labelText: 'Email',
//                 //         ),
//                 //         validator: (value) {
//                 //           if (value!.isEmpty) {
//                 //             return 'This field is required.';
//                 //           }
//                 //           return null;
//                 //         })
//                 //     : const SizedBox(),

//                 // Add more company-specific fields here if needed.
//                 // Render Individual Information Fields if selectedVendorType is 'individual'
                
              
              
//                   TextFormField(
//                     decoration: const InputDecoration(
//                       hintText: 'Main Phone',
//                       labelText: 'Main Phone',
//                     ),
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'This field is required.';
//                       }
//                       return null;
//                     }),
//                 TextFormField(
//                   decoration: const InputDecoration(
//                     hintText: 'Work  Phone',
//                     labelText: 'Work Phone',
//                   ),
//                 ),
//                 TextFormField(
//                     decoration: const InputDecoration(
//                       hintText: 'Email',
//                       labelText: 'Email',
//                     ),
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'This field is required.';
//                       }
//                       return null;
//                     }),
//                 // Add more individual-specific fields here if needed.

//                 const OtherDetails(),
//                 CompanyButton(
//                     backgroundColor: Colors.transparent,
//                     name: 'Add Billing Address',
//                     CompanyPressFunction: () => {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => const BillingScreen()))
//                         }),

//                 CompanyButton(
//                     name: 'Add Shipping Address',
//                     CompanyPressFunction: () => {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => const shippingscreen()))
//                         },
//                     backgroundColor: Color.fromARGB(255, 13, 218, 233)),
//                 (_selectedCustomerType == 'company')
//                     ? CompanyButton(
//                         name: 'Add Contact Details',
//                         CompanyPressFunction: () => {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) =>
//                                           const contactscreen()))
//                             },
//                         backgroundColor:
//                             const Color.fromARGB(255, 76, 168, 175))
//                     : const SizedBox(),
//                 CompanyButton(
//                   backgroundColor: Colors.transparent,
//                   name: 'Communication',
//                   CompanyPressFunction: () => {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const ItemScreen3()))
//                   },
//                 ),
//                 CompanyButton(
//                   backgroundColor: Colors.transparent,
//                   name: 'System Information',
//                   CompanyPressFunction: () => {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const SystemInfo()))
//                   },
//                 )
//               ]
//                   // ],
//                   ),
//             )
//             //////////////////////////////////////////////////////////////////////////////////////////
//             // Render Company Information Fields if selectedVendorType is 'company'
//           ],
//         ),
//       ),
//     );
//   }
// }



import 'package:acounting_max/Provider/CustomerProvider.dart';
import 'package:acounting_max/views/screens/Billingpage/BillingScreen.dart';
import 'package:acounting_max/views/screens/Billingpage/widgets/CustomerBillingAppbar.dart';
import 'package:acounting_max/views/screens/Shippingpage/shippingscreen.dart';
import 'package:acounting_max/views/screens/Shippingpage/widgets/shippingform.dart';
// import 'package:acounting_max/Provider/VendorProvider.dart';
import 'package:acounting_max/views/screens/SystemInfo/Systeminfo.dart';
import 'package:acounting_max/views/screens/contactpage/contactscreen.dart';
import 'package:acounting_max/views/screens/contactpage/widgets/contactform.dart';
import 'package:acounting_max/views/screens/item3/Itemscreen3.dart';
import 'package:acounting_max/views/screens/customerPage/widgets/otherDetails.dart';
import 'package:acounting_max/views/screens/vendor/widgets/vendorButton.dart';
// import 'package:acounting_max/views/screens/contactPerson/contactPersonScreen.dart';
// import 'package:acounting_max/views/screens/vendorAddBilling/vendorAddBillingScreen.dart';
// import 'package:acounting_max/views/screens/vendorAddShipping/addShippingScreen.dart';
// import 'package:acounting_max/views/screens/Billingpage/BillingScreen.dart';
// import 'package:acounting_max/views/screens/Shippingpage/shippingscreen.dart';
// import 'package:acounting_max/views/screens/contactpage/contactscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class CompanyForm extends StatefulWidget {
  static bool isVisible = true;
  const CompanyForm({Key? key});

  @override
  State<CompanyForm> createState() => _CompanyFormState();
}

class _CompanyFormState extends State<CompanyForm> {
  TextEditingController First_name = TextEditingController();
  TextEditingController Middle_name = TextEditingController();
  TextEditingController Last_name = TextEditingController();
  TextEditingController Company_name = TextEditingController();
  String _selectedVendorType = 'individual';

  String _selectedCategory = 'Retailer'; // Default selected category
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    Company_name.dispose();
    First_name.dispose();
    Middle_name.dispose();
    Last_name.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    // bool isCompany = _selectedVendorType == 'company';
    // bool isIndividual = _selectedVendorType == 'individual';
    return Column(
      children: [
        Container(
          alignment: AlignmentDirectional.centerStart,
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                 Row(
                  children: [
                    Radio<String>(
                      value: 'company',
                      groupValue: _selectedVendorType,
                      onChanged: (value) {
                        context.read<CustomerForm>().updateFirstName('');
                        context.read<CustomerForm>().updateLastName('');
                        context.read<CustomerForm>().updateMiddleName('');
                        setState(() {
                          _selectedVendorType = 'company';
                          First_name.clear();
                          Middle_name.clear();
                          Last_name.clear();

                          context
                              .read<CustomerForm>()
                              .updateSelectedStatus(value!);
                        });
                      },
                    ),
                    const Text('Company'),
                    const SizedBox(width: 20),
                    Radio<String>(
                      value: 'individual',
                      groupValue: _selectedVendorType,
                      onChanged: (value) {
                        context.read<CustomerForm>().updateComany('');
                        setState(() {
                          _selectedVendorType = 'individual';
                          Company_name.clear();
                          // context
                          //     .read<VenderProvider>()
                          //     .updateSelectedStatus(value!);
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
                  child: Column(
                    children: [
                      // Render Company Information Fields if selectedVendorType is 'company'
                      if (_selectedVendorType == 'company') ...[
                        TextFormField(
                          controller: Company_name,
                          decoration: const InputDecoration(
                            hintText: 'Company Name',
                            labelText: 'Company Name',
                          ),
                          onChanged: (value) {
                            context.read<CustomerForm>().updateComany(value);
                            setState(() {
                              // _isValidated = true;
                            });
                          },
                          // Disable for individual
                          // validator: (value) {
                          //   if (value == null || value.isEmpty) {
                          //     return 'Company Name is required';
                          //   }
                          //   return null;
                          // },
                        ),
                        // Add more company-specific fields here if needed.
                      ],
                      // Render Individual Information Fields if selectedVendorType is 'individual'
                      if (_selectedVendorType == 'individual') ...[
                        TextFormField(
                          controller: First_name,
                          decoration: const InputDecoration(
                            hintText: 'First Name',
                            labelText: 'First Name',
                          ),
                          onChanged: (value) {
                            context
                                .read<CustomerForm>()
                                .updateFirstName(value);
                            setState(() {});
                          },
                          // Disable for company
                          // enabled: isIndividual,
                        ),
                        TextFormField(
                          controller: Middle_name,
                          decoration: const InputDecoration(
                            hintText: 'Middle Name',
                            labelText: 'Middle Name',
                          ),
                          onChanged: (value) {
                            context
                                .read<CustomerForm>()
                                .updateMiddleName(value);
                            setState(() {});
                          },
                        ),
                        TextFormField(
                          controller: Last_name,
                          decoration: const InputDecoration(
                            hintText: 'Last Name',
                            labelText: 'Last Name',
                          ),
                          onChanged: (value) {
                            context
                                .read<CustomerForm>()
                                .updateLastName(value);
                            setState(() {});
                          },
                        ),
                        // Add more individual-specific fields here if needed.
                      ],

                      // Common Fields
                      DropdownButtonFormField<String>(
                        value: _selectedCategory,
                        onChanged: (newValue) {
                          setState(() {
                            _selectedCategory = newValue!;
                            // onChanged: (value) {
                            context
                                .read<CustomerForm>()
                                .updateSelectedCategory(newValue);
                            // },
                          });
                        },
                        items: const [
                          DropdownMenuItem<String>(
                            value: 'Retailer',
                            child: Text('Retailer'),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Wholesaler',
                            child: Text('Wholesaler'),
                          ),
                        ],
                        decoration: const InputDecoration(
                          hintText: 'Category',
                          labelText: 'Category',
                        ),
                      ),

                      TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            hintText: 'Email',
                            labelText: 'Email',
                          ),
                          onChanged: (value) {
                            context.read<CustomerForm>().updateEmail(value);
                          },
                          // validator: (value) {
                          //   if (value == null || value.isEmpty) {
                          //     return 'Please enter your email';
                          //   }
                          //   if (value.indexOf('@') != value.lastIndexOf('@')) {
                          //     return 'Only one "@" symbol is allowed';
                          //   }
                          //   return null;
                          // }
                          ),
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: const InputDecoration(
                          hintText: 'Main Phone',
                          labelText: 'Main Phone',
                        ),
                        onChanged: (value) {
                          context.read<CustomerForm>().updateMainPhone(value);
                        },
                      ),
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: const InputDecoration(
                          hintText: 'Work Phone',
                          labelText: 'Work Phone',
                        ),
                        onChanged: (value) {
                          context.read<CustomerForm>().updateWorkPhone(value);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const OtherDetails(),
        vendorButton(
            name: 'Add Billing Address',
            vendorPressFunction: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BillingScreen()))
                }),
        const SizedBox(),
        vendorButton(
            name: 'Add Shipping Address',
            vendorPressFunction: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const shippingscreen()))
                }),
        _selectedVendorType == "company"
            ? vendorButton(
                name: 'Add Contact Person',
                vendorPressFunction: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const contactform()))
                    })
            : const SizedBox(),
             vendorButton(
            name: 'Contact Person',
            vendorPressFunction: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const contactscreen()))
                }),
        vendorButton(
            name: 'Communication',
            vendorPressFunction: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ItemScreen3()))
                }),
        vendorButton(
            name: 'System Information',
            vendorPressFunction: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SystemInfo()))
                }),
        //     vendorButton(
        // name: 'dashboard',
        // vendorPressFunction: () => {
        //       Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //               builder: (context) => const dashBoard()))
        //     }),
      ],
    );
  }
}
