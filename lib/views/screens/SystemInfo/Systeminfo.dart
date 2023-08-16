import 'package:acounting_max/views/screens/SystemInfo/widget/SystemAppBar.dart';
import 'package:acounting_max/views/screens/SystemInfo/widget/SystemInfoFroem.dart';
import 'package:flutter/material.dart';

class SystemInfo extends StatefulWidget {
  const SystemInfo({super.key});

  @override
  State<SystemInfo> createState() => _SystemInfoState();
}

class _SystemInfoState extends State<SystemInfo> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
         preferredSize: Size.fromHeight(65),
         child: const SystemAppBar(),
         ),
      body: SingleChildScrollView(
        child: Column(
          children:<Widget>[
              SystemInfoForm(),

            
          ]
        ),
      ),
    );
  }
}