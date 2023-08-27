import 'package:flutter/material.dart';

class VenderProvider extends ChangeNotifier {
  final vendorObj = {};
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
  List<String> _currencies = [];
  List<String> _PaymentTerms = [];
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
  List<String> get currencies => _currencies;
  List<String> get PaymentTerms => _PaymentTerms;

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
  void updateCurrencies(List<String> currencies) {
    _currencies = currencies;
    notifyListeners();
  }
  void updatePaymentTerms(List<String> PaymentTerms) {
    _currencies = PaymentTerms;
    notifyListeners();
  }
void updateAmount(String value) {
    _Ammount = value;
    notifyListeners();
  }


  void vendor_Obj_Save() {
   
   
      vendorObj['selectedVendorCategory'] = selectedVendorCategory;
      vendorObj['selectedVendorStatus'] = selectedVendorStatus;
      vendorObj['CompanyName'] = Company;
      vendorObj['Email'] = Email;
      vendorObj['Main_Phone'] = Main_Phone;
      vendorObj['Work_Phone'] = Work_Phone;
      vendorObj['FirstName'] = FirstName;
      vendorObj['LastName'] = LastName;
      vendorObj['MiddleName'] = MiddleName;
      vendorObj['MiddleName'] = PaymentTerms;
      vendorObj['MiddleName'] = currencies;
      vendorObj['Ammount'] = Ammount;


   
    print(vendorObj);
    }

    //  myObj.clear();
  }





