import 'package:isar/isar.dart';
part 'model.g.dart';

@Collection()
class Item {
 
  Id? id;

   String itemName;
   String itemCode;
   String purchasePrice;
  // late DateTime timestamp; // Add a timestamp field
  // Add any other fields you want to store

  Item({
    required this.itemName,
    required this.itemCode,
    required this.purchasePrice,
    // required DateTime timestamp,
  });

  
}
