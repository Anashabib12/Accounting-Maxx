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
    return  Container(
      alignment: AlignmentDirectional.centerStart,
      child: Padding(
        
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.03,
          horizontal: MediaQuery.of(context).size.width * 0.05,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Customer Information',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.06,
                fontWeight: FontWeight.bold,
                // decoration: TextDecoration.underline
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Text(
              'Customer Type',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.06,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF50C2C9),
              ),
            ),
            
            // Add more widgets here if needed.
          ],
        ),
      ),
    );
  }
}
        
         
              

