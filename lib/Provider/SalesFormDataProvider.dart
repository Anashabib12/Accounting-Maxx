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

  final Sales_save = {};

  void SalesSave() {
    Sales_save["Sales_description"] = salesDescription;
    Sales_save["SalesPrice"] = salesPrise;
    Sales_save['Base Price'] = BasePrice;
    // row1
    Sales_save['Add_Qty:_min_10'] = AddQty10;
    Sales_save['discountFor10_Qty'] = DiscountPrice10;
    // row2
    Sales_save['Add_Qty:_min_20'] = AddQty20;
    Sales_save['discountFor20_Qty'] = DiscountPrice20;
    // row3
    Sales_save['Add_Qty:_min_30'] = AddQty30;
    Sales_save['discountFor30_Qty'] = DiscountPrice30;

    print(Sales_save);
  }
}
