import 'package:acounting_max/views/screens/contactpage/widgets/contactAppbar.dart';
import 'package:acounting_max/views/screens/contactpage/widgets/contactform.dart';
import 'package:flutter/material.dart';

class contactscreen extends StatelessWidget {
  const contactscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize
      (
      preferredSize: Size.fromHeight(65),
      child: contactAppbar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
             const contactform()
          ],
        ),
      ),
      
    );
  }
}