import 'package:flutter/material.dart';

class CustomerForm extends ChangeNotifier {
  final CustomerObj = {};
  // set
  String _selectedVendorCategory = 'Retailer';
  String _selectedVendorStatus = 'individual';
  String _Company = '';
  String _Email = '';
  String _Main_Phone = '';
  String _Work_Phone = '';
  String _FirstName = '';
  String _LastName = '';
  String _MiddleName = '';
  // other details
  String _Ammount = '';
  String _currencies ='';
  String _PaymentTerms = '';
// get
  String get selectedVendorCategory => _selectedVendorCategory; //Retailer
  String get selectedVendorStatus => _selectedVendorStatus; //company
  String get Company => _Company;
  String get Email => _Email;
  String get Main_Phone => _Main_Phone;
  String get Work_Phone => _Work_Phone;
  String get FirstName => _FirstName;
  String get LastName => _LastName;
  String get MiddleName => _MiddleName;
  // other details
  String get Ammount => _Ammount;
  String get currencies => _currencies;
  String get PaymentTerms => _PaymentTerms;

// now creating a method
  void updateComany(String value) {
    _Company = value;
    notifyListeners();
  }

  void updateEmail(String value) {
    _Email = value;
    notifyListeners();
  }

  void updateMainPhone(String value) {
    _Main_Phone = value;
    notifyListeners();
  }

  void updateWorkPhone(String value) {
    _Work_Phone = value;
    notifyListeners();
  }

  void updateFirstName(String value) {
    _FirstName = value;
    notifyListeners();
  }

  void updateLastName(String value) {
    _LastName = value;
    notifyListeners();
  }

  void updateMiddleName(String value) {
    _MiddleName = value;
    notifyListeners();
  }

  void updateSelectedCategory(String category) {
    _selectedVendorCategory = category;
    notifyListeners();
  }

  void updateSelectedStatus(String status) {
    _selectedVendorStatus = status;
    notifyListeners();
  }

  // other details
  void updateCurrencies(String currencies) {
    // _currencies = currencies;
    _currencies = currencies;
    notifyListeners();
  }

  void updatePaymentTerms(String PaymentTerms) {
    // _currencies = PaymentTerms;
    _PaymentTerms = PaymentTerms;
    notifyListeners();
  }

  void updateAmount(String value) {
    _Ammount = value;
    notifyListeners();
  }

  void Customer_Obj_Save() {
    CustomerObj['selectedVendorCategory'] = selectedVendorCategory;
    CustomerObj['selectedVendorStatus'] = selectedVendorStatus;
    CustomerObj['CompanyName'] = Company;
    CustomerObj['Email'] = Email;
    CustomerObj['Main_Phone'] = Main_Phone;
    CustomerObj['Work_Phone'] = Work_Phone;
    CustomerObj['FirstName'] = FirstName;
    CustomerObj['LastName'] = LastName;
    CustomerObj['MiddleName'] = MiddleName;
    CustomerObj['PaymentTerms'] = PaymentTerms;
    CustomerObj['currencies'] = currencies;
    CustomerObj['Ammount'] = Ammount;

    print(CustomerObj);
  }

  //  myObj.clear();
}
