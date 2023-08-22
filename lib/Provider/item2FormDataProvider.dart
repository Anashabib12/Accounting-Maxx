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

  // now save this provider
  // void Item2Save() {
  void Item2Save() {
    ItemObjectSave["IncomeAcount"] = Income_account;
    ItemObjectSave["COGSAccount"] = COGS_account;
    ItemObjectSave["InventoryAccount"] = Inventory_account;

    print(ItemObjectSave);
  }
}
