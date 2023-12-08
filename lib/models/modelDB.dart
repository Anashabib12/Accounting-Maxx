import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:acounting_max/models/model.dart';

class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = openDB();
  }

  Future<void> saveItem(Item newItem) async {
    final isar = await db;
    isar.writeTxnSync<int>(() => isar.items.putSync(newItem)); // Save an ItemSchema object
  }

  Future<List<Item>> getAllItems() async {
    final isar = await db;
    return await isar.items.where().findAll(); // Get all items from the 'items' collection
  }

  
  Future<void> cleanDb() async {
    final isar = await db;
    await isar.writeTxn(() => isar.clear());
  }


  Future<Isar> openDB() async {
  if (Isar.instanceNames.isEmpty) {
    final directory = await getApplicationDocumentsDirectory();
    return await Isar.open(
      [ItemSchema], // Include ItemSchema
      directory: directory.path, // Provide the directory path
      inspector: true,
    );
  }

    return Future.value(Isar.getInstance());
  }
}




