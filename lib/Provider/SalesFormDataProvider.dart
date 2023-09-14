import 'package:flutter/material.dart';

class SalesDataProvider extends ChangeNotifier {
  // set
  String _salesDescripition = '';
  int _salesPrice = 0;
  String _BasePrice = '';
  //row1
  String _AddQty10 = '';
  String _DiscountPrice10 = '';
  //row2
  String _AddQty20 = '';
  String _DiscountPrice20 = '';
  //row3
  String _AddQty30 = '';
  String _DiscountPrice30 = '';
  //row4
  String _AddQty4 = '';
  String _DiscountPrice4 = '';
  //row5
  String _AddQty5 = '';
  String _DiscountPrice5 = '';
// get
  String get salesDescription => _salesDescripition;
  int get salesPrise => _salesPrice;
  String get BasePrice => _BasePrice;
  //row1
  String get AddQty10 => _AddQty10;
  String get DiscountPrice10 => _DiscountPrice10;
  //row2
  String get AddQty20 => _AddQty20;
  String get DiscountPrice20 => _DiscountPrice20;
  //row3
  String get AddQty30 => _AddQty30;
  String get DiscountPrice30 => _DiscountPrice30;
  //row4
  String get AddQty4 => _AddQty4;
  String get DiscountPrice4 => _DiscountPrice4;
  //row5
  String get AddQty5 => _AddQty5;
  String get DiscountPrice5 => _DiscountPrice5;
// method
  void updateSalesDescription(String newValue) {
    _salesDescripition = newValue;
  }

  void updateSalesPrice(int value) {
    _salesPrice = value;
    notifyListeners();
  }

  void updateBasePrice(String value) {
    _BasePrice = value;
    notifyListeners();
  }

  // row1
  void updateAddQty10(String value) {
    _AddQty10 = value;
    notifyListeners();
  }

  void updateDiscountPrice10(String value) {
    _DiscountPrice10 = value;
    notifyListeners();
  }

  // row2
  void updateAddQty20(String value) {
    _AddQty20 = value;
    notifyListeners();
  }

  void updateDiscountPrice20(String value) {
    _DiscountPrice20 = value;
    notifyListeners();
  }

  // row3
  void updateAddQty30(String value) {
    _AddQty30 = value;
    notifyListeners();
  }

  void updateDiscountPrice30(String value) {
    _DiscountPrice30 = value;
    notifyListeners();
  }

  // row4
  void updateAddQty4(String value) {
    _AddQty4 = value;
    notifyListeners();
  }

  void updatePrice4(String value) {
    _DiscountPrice4 = value;
    notifyListeners();
  }

  // row3
  void updateAddQty5(String value) {
    _AddQty5 = value;
    notifyListeners();
  }

  void updatePrice5(String value) {
    _DiscountPrice5 = value;
    notifyListeners();
  }

  //validation
  String? validateItemName(String salesDescription, int salesPrise,
      String BasePrice, String AddQty10, String DiscountPrice10) {
    if (salesDescription.isEmpty) {
      return 'Please enter an item name';
    } else if (salesPrise.isNaN) {
      return 'Please enter an item name';
    } else if (BasePrice.isEmpty) {
      return 'Please enter an item name';
    } else if (AddQty10.isEmpty) {
      return 'Please enter an item name';
    } else if (DiscountPrice10.isEmpty) {
      return 'Please enter an item name';
    } else {
      return null; // Return null when validation fails
    }
  }

  final Sales_save = {};

  void SalesSave() {
    if (validateItemName(salesDescription, salesPrise, BasePrice, AddQty10,
            DiscountPrice10) ==
        null) {
      Sales_save["Sales_description"] = salesDescription;
      Sales_save["SalesPrice"] = salesPrise;
      Sales_save['Base Price'] = BasePrice;
      // row1
      Sales_save['QTY 1'] = AddQty10; //Add_Qty:_min_10
      Sales_save['Price 1'] = DiscountPrice10;
      // row2
      Sales_save['QTY 2'] = AddQty20;
      Sales_save['Price 2'] = DiscountPrice20;
      // row3
      Sales_save['QTY 3'] = AddQty30;
      Sales_save['Price 3'] = DiscountPrice30;
      // row4
      Sales_save['QTY 4'] = AddQty4;
      Sales_save['Price 4'] = DiscountPrice4;
      // row3
      Sales_save['QTY 5'] = AddQty5;
      Sales_save['Price 5'] = DiscountPrice5;

      print(Sales_save);
    }
  }
}
