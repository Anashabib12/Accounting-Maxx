// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class vendorInfo extends StatefulWidget {
  const vendorInfo({super.key});

  @override
  State<vendorInfo> createState() => _vendorInfoState();
}

class _vendorInfoState extends State<vendorInfo> {
  @override
  Widget build(BuildContext context) {
    // String _selectedVendorType = 'company'; // 'company' or 'individual'

    return Container(
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
              'Vendor information',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.06,
                fontWeight: FontWeight.bold,
                // decoration: TextDecoration.underline
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Text(
              'Vendor Type',
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

    // Add more widgets here if needed.
  }
}
