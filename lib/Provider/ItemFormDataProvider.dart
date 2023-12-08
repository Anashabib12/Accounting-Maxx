import 'package:acounting_max/models/model.dart';
import 'package:acounting_max/models/modelDB.dart';
import 'package:flutter/material.dart';

class ItemFormProvider extends ChangeNotifier {
  final myObj = {};

  // Item form fields
  String _itemName = '';
  String _itemCode = '';
  String _purchasePrice = '';

  // Category and status
  String _selectedCategory = 'Retailer';
  String _selectedStatus = 'Active';

  // Getters for form fields
  String get itemName => _itemName;
  String get itemCode => _itemCode;
  String get purchasePrice => _purchasePrice;
  String get selectedCategory => _selectedCategory;
  String get selectedStatus => _selectedStatus;

  // Update methods for form fields
  void updateItemName(String value) {
    _itemName = value;
    notifyListeners();
  }

  void updateItemCode(String value) {
    _itemCode = value;
    notifyListeners();
  }

  void updatePurchasePrice(String value) {
    _purchasePrice = value;
    notifyListeners();
  }

  // Update methods for category and status
  void updateSelectedCategory(String category) {
    _selectedCategory = category;
    notifyListeners();
  }

  void updateSelectedStatus(String status) {
    _selectedStatus = status;
    notifyListeners();
  }

  // Validate the form
  String? validateItemName() {
    if (_itemName.isEmpty || _itemCode.isEmpty || _purchasePrice.isEmpty) {
      return 'Please enter all item details';
    }
    return null;
  }

  // Define the loadFormData method to load data from Isar
  Future<void> loadFormData(IsarService isarService) async {
    final items = await isarService.getAllItems();
    if (items.isNotEmpty) {
      final item = items[0]; // You can adjust this based on your data structure
      _itemName = item.itemName;
      _itemCode = item.itemCode;
      _purchasePrice = item.purchasePrice;
      notifyListeners();
    }
  }



  // Save the item to Isar
  Future<void> saveItemToIsar(IsarService isarService) async {
    final validationMessage = validateItemName();
    if (validationMessage == null) {
      final newItem = Item(
        itemName: _itemName,
        itemCode: _itemCode,
        purchasePrice: _purchasePrice, 
        
        // category: _selectedCategory,
        // status: _selectedStatus,
      );
      await isarService.saveItem(newItem);
    }
  }
}