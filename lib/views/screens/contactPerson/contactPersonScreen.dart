import 'package:acounting_max/views/screens/contactPerson/widgets/contactPersonAppBar.dart';
import 'package:acounting_max/views/screens/contactPerson/widgets/contactPersonForm.dart';
import 'package:flutter/material.dart';

class ContactPersonScreen extends StatefulWidget {
  const ContactPersonScreen({super.key});

  @override
  State<ContactPersonScreen> createState() => _ContactPersonScreenState();
}

class _ContactPersonScreenState extends State<ContactPersonScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize
      (
        preferredSize: Size.fromHeight(65),
        child:contactPersonAppBar(), 
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ContactPersonForm(),
              
            ],
          ),
        ),
    );
  }
}