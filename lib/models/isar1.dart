// import 'package:acounting_max/models/isar.dart';
// import 'package:isar/isar.dart';
// import 'package:path_provider/path_provider.dart';

// class DatabaseService {
//   static late final Isar _isar;

//   Isar get isar => _isar;

//   Future<void> init() async {
//     final documentsDirectory = await getApplicationDocumentsDirectory();
//     _isar = await Isar.open([VendorSchema], directory: documentsDirectory.path);
//   }

//   Future<List<Vendor>> getVendors() async {
//     return await _isar.vendors.where().findAll();
//   }

//   Future addVendor(Vendor newVendor) async {
//     await DatabaseService().isar.writeTxn(() async {
//       await DatabaseService().isar.vendors.put(newVendor);
//     });
//   }

//   Future editVendor(Vendor editedVendor) async {
//     await DatabaseService().isar.writeTxn(() async {
//       await DatabaseService().isar.vendors.put(editedVendor);
//     });
//   }

//   Future deleteVendor(int id) async {
//     await DatabaseService().isar.writeTxn(() async {
//       await DatabaseService().isar.vendors.delete(id);
//     });
//   }
// }
