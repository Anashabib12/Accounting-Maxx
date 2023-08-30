// ignore: file_names
import 'package:acounting_max/Provider/VendorContactPerson.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class ContactPersonForm extends StatefulWidget {
  const ContactPersonForm({super.key});

  @override
  State<ContactPersonForm> createState() => _ContactPersonFormState();
}

class _ContactPersonFormState extends State<ContactPersonForm> {
  String _selectedJobeRole = 'Store Manager';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.03,
        horizontal: MediaQuery.of(context).size.width * 0.05,
      ),
      child: Column(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Contact Person',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.06,
                  fontWeight: FontWeight.bold,
                  // decoration: TextDecoration.underline
                  ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'First Name',
                labelText: 'First Name',
              ),
              onChanged: (value) {
                context.read<VenderContactPersonProvider>().updateFirstName(value);
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Last Name',
                labelText: 'Last Name',
              ),
              onChanged: (value) {
                context.read<VenderContactPersonProvider>().updateLastName(value);
              },
            ),
            
            TextFormField(
              // validator: (value) {
              //   if (value == null || value.isEmpty){
              //     return 'PLease enter a valid email';
              //   }
              //   if (value.indexOf('@') != value.lastIndexOf('@')){
              //     return 'Only one "@" symbol is allowed';
              //   }
              //   return null;  
              // },
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: 'Email',
                labelText: 'Email',
              ),
              onChanged: (value) {
                context.read<VenderContactPersonProvider>().updateEmail(value);
              },
            ),
            TextFormField(
              keyboardType: TextInputType.phone,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly
              ],
              decoration: const InputDecoration(
                hintText: 'Contact Phone',
                labelText: 'Contact Phone',
              ),
              onChanged: (value) {
                context.read<VenderContactPersonProvider>().updateContactPhone(value);
              },
            ),
            DropdownButtonFormField(
              value: _selectedJobeRole,
              onChanged: (newValue){
// onChanged: (value) {
                context.read<VenderContactPersonProvider>().updateJoobRole(newValue!);
              // },                
                setState(() {
                  _selectedJobeRole = newValue!;
                });
              },
              items: const [
                DropdownMenuItem(
                  value: 'Key Decision Maker',
                  child: Text('Key Decision Maker'),
                ),
                DropdownMenuItem(
                  value: 'Director',
                  child: Text('Director'),
                ),
                DropdownMenuItem(
                  value: 'Purchase Manager',
                  child: Text('Purchase Manager'),
                ),
                DropdownMenuItem(
                  value: 'CEO',
                  child: Text('CEO'),
                ),
                DropdownMenuItem(
                  value: 'Owner',
                  child: Text('Owner'),
                ),
                DropdownMenuItem(
                  value: 'Delivery Manager',
                  child: Text('Delivery Manager'),
                ),
                DropdownMenuItem(
                  value: 'Store Manager',
                  child: Text('Store Manager'),
                ),
              ],
              decoration: const InputDecoration(
                hintText: 'Jobe Role',
                labelText: 'Jobe Role',
              ),
            )

            // TextFormField(
            //   decoration: const InputDecoration(
            //     hintText: 'Job Role',
            //     labelText: 'Job Role',
            //   ),
            // ),
          
          ]),
        ],
      ),
    );
  }
}