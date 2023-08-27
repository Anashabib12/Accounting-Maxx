import 'package:flutter/material.dart';

class Item2FormProvider extends ChangeNotifier {
  final ItemObjectSave = {};

  // set
  String _Income_account = '';
  String _COGS_account = '';
  String _Inventory_account = '';
  // get
  String get Income_account => _Income_account;
  String get COGS_account => _COGS_account;
  String get Inventory_account => _Inventory_account;

  // now creating a method for access privite value
  void updateIncomeAccount(String value) {
    _Income_account = value;
    notifyListeners();
  }

  void updateCOGSAcount(String value) {
    _COGS_account = value;
    notifyListeners();
  }

  void updateInventoryAcount(String value) {
    _Inventory_account = value;
    notifyListeners();
  }

  String? validateItemName(
      String Income_account, String COGS_account, String Inventory_account) {
    if (Income_account.isEmpty) {
      return 'Please enter an item name';
    } else if (COGS_account.isEmpty) {
      return 'Please enter an item name';
    } else if (Inventory_account.isEmpty) {
      return 'Please enter an item name';
    } else {
      return null; // Return null when validation fails
    }
  }

  // now save this provider
  // void Item2Save() {
  void Item2Save() {
    if (validateItemName(Income_account, COGS_account, Inventory_account) == null) {
      // ItemObjectSave["IncomeAcount"] = "waiz";
      // ItemObjectSave["COGSAccount"] = "mehdi";
      // ItemObjectSave["InventoryAccount"] = "anas";
      ItemObjectSave["IncomeAcount"] = Income_account;
      ItemObjectSave["COGSAccount"] = COGS_account;
      ItemObjectSave["InventoryAccount"] = Inventory_account;

      print(ItemObjectSave);
    }
  }
}
