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
                  child: TextFormField(
                      decoration:const InputDecoration(
                    hintText:"Base Price",
                      ),
                    // style: TextStyle(
                    //   fontSize: 18, // Set the font size here
                    // ),
                      onChanged: (value) {
                        context.read<SalesDataProvider>().updateBasePrice(value);
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
                    hintText: 'Add Qty: min-10',
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
                    hintText: 'Discount Price',
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
                    hintText: 'Add Qty: min-20',
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
                    hintText: 'Discount Price',
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
                    hintText: 'Add Qty: min-30',
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
                    hintText: 'Discount Price',
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