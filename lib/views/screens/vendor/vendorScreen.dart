// ignore: file_names
import 'package:acounting_max/views/screens/vendor/widgets/appBar.dart';
// import 'package:acounting_max/views/screens/vendor/widgets/otherdetails.dart';
// import 'package:acounting_max/views/screens/vendor/widgets/vendorButton.dart';
import 'package:acounting_max/views/screens/vendor/widgets/vendorInfo.dart';
import 'package:acounting_max/views/screens/vendor/widgets/vendorform.dart';
import 'package:flutter/material.dart';

// import '../contactPerson/contactPersonScreen.dart';
// import '../vendorAddBilling/vendorAddBillingScreen.dart';
// import '../vendorAddShipping/addShippingScreen.dart';

class VendorScreenState extends StatefulWidget {
  const VendorScreenState({super.key});

  @override
  State<VendorScreenState> createState() => _VendorScreenStateState();
}

class _VendorScreenStateState extends State<VendorScreenState> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:  PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: VendorAppbar(),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              vendorInfo(),
              VendorForm(),
              // const OtherDetails(),
              
              //  vendorButton(
              //   name: 'Add Billing Address',
              //   vendorPressFunction: ()=> {
              //     Navigator.push(context,
              //     MaterialPageRoute(builder: (context)=> const vendorAddBillingScreen())
              //     )
              //   }
              //  ),
              //  vendorButton(
              //   name: 'Add Shipping Address',
              //   vendorPressFunction: ()=> {
              //     Navigator.push(context,
              //     MaterialPageRoute(builder: (context)=> const AddShippingScreen())
              //     )

              //   }
              //  ),
              //   vendorButton(
              //   name: 'Add Contact Person',
              //   vendorPressFunction: ()=> {
              //     Navigator.push(context,
              //     MaterialPageRoute(builder: (context)=> const ContactPersonScreen())
              //     )

              //   }
              //  ),
              //   vendorButton(
              //   name: 'Communication',
              //   vendorPressFunction: ()=> {
              //     Navigator.push(context,
              //     MaterialPageRoute(builder: (context)=> const vendorAddBillingScreen())
              //     )

              //   }
              //  ),
            ],
          ),
        ),
    );
    
  }
}