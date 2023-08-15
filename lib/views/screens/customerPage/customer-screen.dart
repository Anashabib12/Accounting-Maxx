// import 'package:acounting_max/views/screens/Billingpage/widgets/Billingform.dart';
// import 'package:acounting_max/views/screens/Shippingpage/shippingscreen.dart';
// import 'package:acounting_max/views/screens/contactpage/contactscreen.dart';
import 'package:acounting_max/views/screens/customerPage/Widgets/APPbar.dart';
// import 'package:acounting_max/views/screens/customerPage/Widgets/CompanyButton.dart';
import 'package:flutter/material.dart';

// import '../Billingpage/BillingScreen.dart';
// import '../Billingpage/widgets/CustomerBillingAppbar.dart';
import 'Widgets/CompanyForm.dart';
import 'Widgets/customer_info.dart';

class CustomerScreenWidget extends StatefulWidget {
  const CustomerScreenWidget({super.key});

  @override
  State<CustomerScreenWidget> createState() => _CustomerScreenWidgetState();
}

class _CustomerScreenWidgetState extends State<CustomerScreenWidget> {
  get size => 65;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructors
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: const AppbarWidget(),
      ),
      body: SingleChildScrollView(
       child: Column(
          children: [
          const CustomerCompany(), 
          const CompanyForm(),
          
          //  CompanyButton(
          //       name: 'Add Billing Address',
          //       CompanyPressFunction: ()=> {
          //         Navigator.push(context,
          //         MaterialPageRoute(builder: (context)=> const BillingScreen())
          //         )

          //       },
          //        backgroundColor: Colors.green
          //      ),
          //      CompanyButton(
          //       name: 'Add Shipping Address',
          //       CompanyPressFunction: ()=> {
          //         Navigator.push(context,
          //         MaterialPageRoute(builder: (context)=> const shippingscreen())
          //         )

          //       },
          //        backgroundColor: Color.fromARGB(255, 13, 218, 233)
          //      ),
          //      CompanyButton(
          //       name: 'Add Contact Details',
          //       CompanyPressFunction: ()=> {
          //         Navigator.push(context,
          //         MaterialPageRoute(builder: (context)=> const contactscreen())
          //         )

          //       },
          //        backgroundColor: const Color.fromARGB(255, 76, 168, 175)
          //      ),
          //      CompanyButton(
          //       name: 'Communication',
          //       CompanyPressFunction: ()=> {
          //         Navigator.push(context,
          //         MaterialPageRoute(builder: (context)=> const BillingScreen())
          //         )

          //       },
          //        backgroundColor: const Color.fromARGB(255, 76, 168, 175)
          //      )
            ]
          )
        )
    );
    
  }

}
          
        

