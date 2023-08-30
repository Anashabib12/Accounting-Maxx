import 'package:flutter/material.dart';

class VenderContactPersonProvider extends ChangeNotifier {
  final vendorContactPersonObj = {};
  // set
  String _FirstName = '';
  String _LastName = '';
  String _Email = '';
  String _ContactPhone = '';
  String _JobRole = '';
  // get
  String get FirstName => _FirstName;
  String get LastName => _LastName;
  String get Email => _Email;
  String get ContactPhone => _ContactPhone;
  String get JobRole => _JobRole;

// method
  void updateFirstName(String value) {
    _FirstName = value;
    notifyListeners();
  }

  void updateLastName(String value) {
    _LastName = value;
    notifyListeners();
  }

  void updateEmail(String value) {
    _Email = value;
    notifyListeners();
  }

  void updateContactPhone(String value) {
    _ContactPhone = value;
    notifyListeners();
  }

  void updateJoobRole(String value) {
    _JobRole = value;
    notifyListeners();
  }

  void vendorContactPersonSave() {
    vendorContactPersonObj['FirstName'] = _FirstName;
    vendorContactPersonObj['LastName'] = _LastName;
    vendorContactPersonObj['Email'] = _Email;
    vendorContactPersonObj['ContactPhone'] = _ContactPhone;
    vendorContactPersonObj['JobRole'] = _JobRole;
    
    print(vendorContactPersonObj);
  }
}
