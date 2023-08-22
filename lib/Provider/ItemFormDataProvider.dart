// import 'package:acounting_max/views/screens/item1/widgets/itemform.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class ItemFormData extends ChangeNotifier {
//   String itemName = '';
//   String itemCode = '';
//   String purchasePrice = '';

//   void updateItemName(String name) {
//     itemName = name;
//     notifyListeners();
//   }

//   void updateItemCode(String code) {
//     itemCode = code;
//     notifyListeners();
//   }

//   void updatePurchasePrice(String price) {
//     purchasePrice = price;
//     notifyListeners();
//   }

//   void clearFormData() {
//     itemName = '';
//     itemCode = '';
//     purchasePrice = '';
//     notifyListeners();
//   }
// }

// class ItemFormDataProvider extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => ItemFormData(),
//       child: _ItemFormDataProviderContent(),
//     );
//   }
// }

// class _ItemFormDataProviderContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final formData = Provider.of<ItemFormData>(context);

//     return itemFormWidget(formData: formData);
//   }
// }

import 'package:flutter/material.dart';

class ItemFormProvider extends ChangeNotifier {
  final myObj = {};
  //item form set
  String _itemName = '';
  String _itemCode = '';
  int _purchasePrice = 0;
//category button set
  String _selectedCategory = 'Retailer'; // Default value
// radio buttton set
  String _selectedStatus = 'Active'; // Default value

  //item form get
  String get itemName => _itemName;
  String get itemCode => _itemCode;
  int get purchasePrice => _purchasePrice;
//category button get
  String get selectedCategory => _selectedCategory;
// radio button get
  String get selectedStatus => _selectedStatus;

// item form method
  void updateItemName(String value) {
    _itemName = value;
    notifyListeners();
  }
  void updateItemCode(String value) {
    _itemCode = value;
    notifyListeners();
  }

  void updatePurchasePrice(int value) {
    _purchasePrice = value;
    notifyListeners();
  }

// radio button method
  void updateSelectedCategory(String category) {
    _selectedCategory = category;
    notifyListeners();
  }

  void updateSelectedStatus(String status) {
    _selectedStatus = status;
    notifyListeners();
  }

//save button
  void save() {
    myObj['name'] = itemName;
    myObj['code'] = itemCode;
    myObj['price'] = purchasePrice;
    myObj['category'] = selectedCategory; // Save selected category
    myObj['status'] = selectedStatus;

    print(myObj);

    //  myObj.clear();
  }
  // void clearFields() {
  //   myObj.clear();
  //   notifyListeners();
  //   print(myObj['']);
  // }
}
