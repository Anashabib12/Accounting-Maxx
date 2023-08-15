import 'package:flutter/material.dart';

class CustomerCompany extends StatefulWidget {
  const CustomerCompany({super.key});

  @override
  State<CustomerCompany> createState() => _CustomerCompanyState();
}

class _CustomerCompanyState extends State<CustomerCompany> {
  String SelectOption = "option1";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20 , right: 135),
              child: const Text(
                'Customer Information',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  
                ),
              ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20,right: 200),
              child: const Text(
                'Customer Type',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 7, 231, 223),
                  
                ),
              ),
        ),
      ]);
  }
}
        
         
              

