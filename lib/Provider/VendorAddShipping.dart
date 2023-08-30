import 'package:flutter/material.dart';

class VenderAddShippingProvider extends ChangeNotifier {
  final vendorAddShippingObj = {};
  // set
  String _Address = '';
  String _State = '';
  String _City = '';
  String _Country = '';
  String _ZipCode = '';
  // get
  String get Address => _Address;
  String get State => _State;
  String get City => _City;
  String get Country => _Country;
  String get ZipCode => _ZipCode;

// method
  void updateAddress(String value) {
    _Address = value;
    notifyListeners();
  }

  void updateSate(String value) {
    _State = value;
    notifyListeners();
  }

  void updateCity(String value) {
    _City = value;
    notifyListeners();
  }

  void updateCountry(String value) {
    _Country = value;
    notifyListeners();
  }

  void updateZipCode(String value) {
    _ZipCode = value;
    notifyListeners();
  }

  void vendorAddShippingSave() {
    vendorAddShippingObj['address'] = _Address;
    vendorAddShippingObj['Sate'] = _State;
    vendorAddShippingObj['city'] = _City;
    vendorAddShippingObj['Country'] = _Country;
    vendorAddShippingObj['ZipCode'] = _ZipCode;
    
    print(vendorAddShippingObj);
  }
}
