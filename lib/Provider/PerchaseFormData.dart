// import 'package:flutter/material.dart';

// class PerchaseFormProvider extends ChangeNotifier {
//   final purchaseSave = {};

//   //set privite value
//   String _selectedCostingOption = 'Avarage';
//   //get privite value
//   String get selectedCostingOption => _selectedCostingOption;

//   // now cteating a mathod for accesing a privite valye
//   void updateSelectedCategory(String costing) {
//     _selectedCostingOption = costing;
//     notifyListeners();
//   }

//   // ignore: non_constant_identifier_names
//   void purchase_save() {
//     purchaseSave["costing"] = selectedCostingOption;
//   }
// }

import 'package:flutter/material.dart';

class ItemForm3Provider extends ChangeNotifier {
  String _selectedCostingOption = 'Avarage';
  String _selectedOptionVender = 'Vendor1';
  bool _isDropShippingChecked = false;
  String _purchaseDescripition = '';
  List<String> _selectedLocations = []; // Add this property

  String get selectedCostingOption => _selectedCostingOption;
  String get selectedOptionVender => _selectedOptionVender;
  bool get isDropShippingChecked => _isDropShippingChecked;
  String get purchaseDescription => _purchaseDescripition;
  List<String> get selectedLocations => _selectedLocations;

  // Other methods and properties...
  void updateCostingOption(String category) {
    _selectedCostingOption = category;
    notifyListeners();
  }

  void updateVendor(String value) {
    _selectedOptionVender = value;
    notifyListeners();
  }

  void updateDropShipping(bool value) {
    _isDropShippingChecked = value;
    notifyListeners();
  }

  void updatePurchaseDescription(String value) {
    _purchaseDescripition = value;
    notifyListeners();
  }

  void updateSelectedLocations(List<String> locations) {
    _selectedLocations = locations;
    notifyListeners();
  }

  //validation
  String? validateItemName(String selectedCostingOption,
      String selectedOptionVender, String purchaseDescription) {
    if (selectedCostingOption.isEmpty) {
      return 'Please enter an item name';
    } else if (selectedOptionVender.isEmpty) {
      return 'Please enter an item name';
    } else if (purchaseDescription.isEmpty) {
      return 'Please enter an item name';
    } else {
      return null; // Return null when validation fails
    }
  }

  final purchaseSave = {};

  void purchasesave() {
    if (validateItemName(selectedCostingOption,selectedOptionVender,purchaseDescription) == null) {
    purchaseSave["selectedCostingOption"] = selectedCostingOption;
    purchaseSave["selectedVender"] = selectedOptionVender;
    purchaseSave["dropshiping"] = isDropShippingChecked;
    purchaseSave["purchase_description"] = purchaseDescription;
    purchaseSave["selectedLocations"] = selectedLocations;
    print(purchaseSave);
  }
  }
}
