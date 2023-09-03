import 'package:acounting_max/Provider/SalesFormDataProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class SaleQtyPrice extends StatefulWidget {
  const SaleQtyPrice({super.key});

  @override
  State<SaleQtyPrice> createState() => _SaleQtyPriceState();
}

class _SaleQtyPriceState extends State<SaleQtyPrice> {
   String _selectedJobeRole = 'Eid';
  //  String _selectedJobeRole = 'Store Manager';
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          // Container(
          // heading
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Quantity",
                    style: TextStyle(
                      fontSize: 18, // Set the font size here
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width*0.4,
                  //  width: MediaQuery.of(context).size.width * 0.9,
                  // child: TextFormField(
                  //     decoration:const InputDecoration(
                  //   // border: InputBorder(),
                  //   hintText: 'Base',
                  //   // labelText: 'Income Account',
                  // )),
                 child:  DropdownButtonFormField(
              value: _selectedJobeRole,
              onChanged: (newValue){
// onChanged: (value) {
                // context.read<VenderContactPersonProvider>().updateJoobRole(newValue!);
              // },                
                setState(() {
                  _selectedJobeRole = newValue!;
                });
              },
              items: const [
                DropdownMenuItem(
                  value: 'Eid',
                  child: Text('Eid'),
                ),
                DropdownMenuItem(
                  value: 'Christmas',
                  child: Text('Christmas'),
                ),
                DropdownMenuItem(
                  value: 'New Year',
                  child: Text('New Year'),
                ),
                DropdownMenuItem(
                  value: 'Eid ul fitr',
                  child: Text('Eid ul fitr'),
                ),
                DropdownMenuItem(
                  value: '14 Aug',
                  child: Text('14 Aug'),
                ),
              ],
              decoration: const InputDecoration(
                hintText: 'Price Level Name',
                labelText: 'Price Level Name',
              ),
            )
                  // child: TextFormField(
                  //     decoration:const InputDecoration(
                  //   hintText:"Base Price",
                  //     ),
                  //   // style: TextStyle(
                  //   //   fontSize: 18, // Set the font size here
                  //   // ),
                  //     onChanged: (value) {
                  //       context.read<SalesDataProvider>().updateBasePrice(value);
                  //     },
                  // ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: MediaQuery.of(context).size.width * 0.9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  // margin: EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                      inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Quantity 1',//Add Qty: min-10
                    // labelText: 'Income Account',
                  ),
                  onChanged: (value) {
                        context.read<SalesDataProvider>().updateAddQty10(value);
                  },
                  
                  ),
                ),
                Container(
                  // margin: EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: TextFormField(
                          keyboardType: TextInputType.phone,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                      decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Price',
                    // labelText: 'Income Account',
                  ),
                  onChanged: (value){
                        context.read<SalesDataProvider>().updateDiscountPrice10(value);
                  },
                  ),
                ),
              ],
            ),
          ),

          // 2nd input
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: MediaQuery.of(context).size.width * 0.9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  // margin: EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: TextFormField(
                          keyboardType: TextInputType.phone,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                      decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Quantity 2',//Add Qty: min-20
                    // labelText: 'Income Account',
                  ),
                  onChanged: (value){
                        context.read<SalesDataProvider>().updateAddQty20(value);
                  },
                  ),
                ),
                Container(
                  // margin: EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: TextFormField(
                            keyboardType: TextInputType.phone,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Price',
                    // labelText: 'Income Account',
                  ),
                  onChanged: (value){
                        context.read<SalesDataProvider>().updateDiscountPrice20(value);
                  },
                  ),
                ),
              ],
            ),
          ),

          // 3rd input
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: MediaQuery.of(context).size.width * 0.9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  // margin: EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: TextFormField(
                            keyboardType: TextInputType.phone,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Quantity 3',//Add Qty: min-30
                    // labelText: 'Income Account',
                  ),
                  onChanged: (value){
                        context.read<SalesDataProvider>().updateAddQty30(value);
                  },
                  ),
                ),
                Container(
                  // margin: EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: TextFormField(
                            keyboardType: TextInputType.phone,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Price',
                    // labelText: 'Income Account',
                  ),
                  onChanged: (value){
                        context.read<SalesDataProvider>().updateDiscountPrice30(value);
                  },
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: MediaQuery.of(context).size.width * 0.9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  // margin: EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: TextFormField(
                            keyboardType: TextInputType.phone,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Quantity 4',//Add Qty: min-30
                    // labelText: 'Income Account',
                  ),
                  onChanged: (value){
                        context.read<SalesDataProvider>().updateAddQty4(value);
                  },
                  ),
                ),
                Container(
                  // margin: EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: TextFormField(
                            keyboardType: TextInputType.phone,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Price',
                    // labelText: 'Income Account',
                  ),
                  onChanged: (value){
                        context.read<SalesDataProvider>().updatePrice4(value);
                  },
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: MediaQuery.of(context).size.width * 0.9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  // margin: EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: TextFormField(
                            keyboardType: TextInputType.phone,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Quantity 5',//Add Qty: min-30
                    // labelText: 'Income Account',
                  ),
                  onChanged: (value){
                        context.read<SalesDataProvider>().updateAddQty5(value);
                  },
                  ),
                ),
                Container(
                  // margin: EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: TextFormField(
                            keyboardType: TextInputType.phone,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Price',
                    // labelText: 'Income Account',
                  ),
                  onChanged: (value){
                        context.read<SalesDataProvider>().updatePrice5(value);
                  },
                  ),
                ),
              ],
            ),
          ),

          
        ],
      ),
    );
  }
}


//input 1

          // Container(
          //   child: Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,

          //     children: [
          //       Container(
          //     // margin: EdgeInsets.only(top: 20),
          //     // width: MediaQuery.of(context).size.width*0.9,
          //     child: TextFormField(
          //       decoration: InputDecoration(
          //         border: OutlineInputBorder(),
          //          hintText: 'Income Account',
          //             labelText: 'Income Account',
          //         )

          //     ),
          //   ),
          //   Container(
          //     // margin: EdgeInsets.only(top: 20),
          //     // width: MediaQuery.of(context).size.width*0.9,
          //     child: TextFormField(
          //       decoration: InputDecoration(
          //         border: OutlineInputBorder(),
          //          hintText: 'Income Account',
          //             labelText: 'Income Account',
          //         )

          //     ),
          //   ),

          //     ],
          //   ),
          // )