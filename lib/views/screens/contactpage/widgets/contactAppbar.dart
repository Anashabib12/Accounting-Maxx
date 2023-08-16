import 'package:flutter/material.dart';

class contactAppbar extends StatelessWidget {
  const contactAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
         

        title: const Text ('Contact Person'),
        backgroundColor: const Color(0xFF50C2C9),
    
      ),
    );
  }
}