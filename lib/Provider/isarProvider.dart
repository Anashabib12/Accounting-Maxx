// import 'package:flutter/material.dart';
// import 'package:isar/isar.dart';
// import 'package:provider/provider.dart';

// class IsarProvider extends StatelessWidget {
//   final Isar isar;
//   final Widget child;

//   const IsarProvider({required this.isar, required this.child});

//   @override
//   Widget build(BuildContext context) {
//     return Provider<Isar>.value(
//       value: isar,
//       child: child,
//     );
//   }

//   static Isar of(BuildContext context) {
//     final isar = Provider.of<Isar>(context, listen: false);
//     if (isar == null) {
//       throw Exception("IsarProvider was not found in the widget tree.");
//     }
//     return isar;
//   }
// }
