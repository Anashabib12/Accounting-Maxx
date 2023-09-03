import 'package:acounting_max/Provider/VendorProvider.dart';
import 'package:acounting_max/views/screens/SystemInfo/Systeminfo.dart';
import 'package:acounting_max/views/screens/contactPerson/contactPersonScreen.dart';
import 'package:acounting_max/views/screens/item3/Itemscreen3.dart';
import 'package:acounting_max/views/screens/vendor/widgets/otherdetails.dart';
import 'package:acounting_max/views/screens/vendor/widgets/vendorButton.dart';
import 'package:acounting_max/views/screens/vendorAddBilling/vendorAddBillingScreen.dart';
import 'package:acounting_max/views/screens/vendorAddShipping/addShippingScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class VendorForm extends StatefulWidget {
  static bool isVisible = true;
  const VendorForm({Key? key});

  @override
  State<VendorForm> createState() => _VendorFormState();
}

class _VendorFormState extends State<VendorForm> {
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
                        context.read<VenderProvider>().updateFirstName('');
                        context.read<VenderProvider>().updateLastName('');
                        context.read<VenderProvider>().updateMiddleName('');
                        setState(() {
                          _selectedVendorType = 'company';
                          First_name.clear();
                          Middle_name.clear();
                          Last_name.clear();

                          context
                              .read<VenderProvider>()
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
                        context.read<VenderProvider>().updateComany('');
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
                            context.read<VenderProvider>().updateComany(value);
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
                                .read<VenderProvider>()
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
                                .read<VenderProvider>()
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
                                .read<VenderProvider>()
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
                                .read<VenderProvider>()
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
                            context.read<VenderProvider>().updateEmail(value);
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            if (value.indexOf('@') != value.lastIndexOf('@')) {
                              return 'Only one "@" symbol is allowed';
                            }
                            return null;
                          }),
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
                          context.read<VenderProvider>().updateMainPhone(value);
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
                          context.read<VenderProvider>().updateWorkPhone(value);
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
                          builder: (context) => const vendorAddBillingScreen()))
                }),
        const SizedBox(),
        vendorButton(
            name: 'Add Shipping Address',
            vendorPressFunction: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddShippingScreen()))
                }),
        _selectedVendorType == "company"
            ? vendorButton(
                name: 'Add Contact Person',
                vendorPressFunction: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ContactPersonScreen()))
                    })
            : const SizedBox(),
             vendorButton(
            name: 'Contact Person',
            vendorPressFunction: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ContactPersonScreen()))
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
