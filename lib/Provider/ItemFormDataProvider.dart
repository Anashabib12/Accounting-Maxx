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

// import 'package:acounting_max/Provider/item2FormDataProvider.dart';
import 'package:flutter/material.dart';

class ItemFormProvider extends ChangeNotifier {
  final myObj = {};
  //item form set
  String _itemName = '';


  String _itemCode = '';
  String _purchasePrice = '';

//category button set
  String _selectedCategory = 'Retailer'; // Default value
// radio buttton set
  String _selectedStatus = 'Active'; // Default value

  // final Item2FormProvider item2FormProvider; // this is the another provider file
  //item form get
  String get itemName => _itemName;
  String get itemCode => _itemCode;
  String get purchasePrice => _purchasePrice;
//category button get
  String get selectedCategory => _selectedCategory;
// radio button get
  String get selectedStatus => _selectedStatus;

// item form method
  String? validateItemName(String value, String itemCode , String purchasePrice) {
    if (value.isEmpty) {
      return 'Please enter an item name';
    }
    else if(itemCode.isEmpty){
      return 'Please enter an item name';
    }
    else if(purchasePrice.isEmpty){
      return 'Please enter an item name';
    }
    else{

    return null; // Return null when validation fails
    }
  }

  void updateItemName(String value) {
    _itemName = value;
    notifyListeners();
  }
  // void updateItemName(String value) {
  //   if (value.isEmpty || value == null) {
  //     _itemNameError = 'Item name cannot be empty';
  //   } else {
  //     _itemNameError = ''; // Clear error message
  //     _itemName = value;
  //   }
  //   notifyListeners();
  // }

  void updateItemCode(String value) {
    _itemCode = value;
    notifyListeners();
  }

  void updatePurchasePrice(String value) {
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

  // ItemFormProvider(this.item2FormProvider);

//save button
  void save() {
    if (validateItemName(itemName,itemCode,purchasePrice) == null) {
    // final itemNameError = validateItemName(itemName);
      myObj['name'] = itemName;
    myObj['code'] = itemCode;
    myObj['price'] = purchasePrice;
    myObj['category'] = selectedCategory; // Save selected category
    myObj['status'] = selectedStatus;
    // Access the ItemObjectSave from the Item2FormProvider
    // myObj['alllAxxounts'] = item2FormProvider.ItemObjectSave;///final Item2FormProvider item2FormProvider; // this is the another provider file
    //  myObj['alllAxxounts'] = item2FormProvider.ItemObjectSave.values;
    // myObj['COGSAccount'] = item2FormProvider.COGS_account;
    // myObj['InventoryAccount'] = item2FormProvider.Inventory_account;
    print(myObj);
    }

    //  myObj.clear();
  }
  // void clearFields() {
  //   myObj.clear();
  //   notifyListeners();
  //   print(myObj['']);
  // }
}
