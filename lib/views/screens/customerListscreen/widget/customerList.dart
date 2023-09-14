import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class CustomerList extends StatefulWidget {
  const CustomerList({Key? key}) : super(key: key);

  @override
  State<CustomerList> createState() => _CustomerListState();
}

class _CustomerListState extends State<CustomerList> {
  List<CustomerData> customerDataList = [];

  @override
  void initState() {
    super.initState();
    fetchDataFromDatabase();
  }

  Future<void> fetchDataFromDatabase() async {
    // Perform GraphQL query to fetch customer data.
    final HttpLink link = HttpLink("https://rickandmortyapi.com/graphql");
    final GraphQLClient qlClient = GraphQLClient(
      link: link,
      cache: GraphQLCache(store: HiveStore()),
    );

    final QueryResult result = await qlClient.query(
      QueryOptions(
        document: gql(
          """
           query {
                characters() {
                  results{
                    name
                  }
                  }
                }""",
        ),
      ),
    );

    if (result.hasException) {
      // Handle query errors here.
      print('GraphQL Error: ${result.exception.toString()}');
      return;
    }

    // Process the query result and update the widget's state.
    setState(() {
      customerDataList = parseQueryResult(result);
    });
  }

  List<CustomerData> parseQueryResult(QueryResult result) {
    // Parse the GraphQL query result and return a list of customer data.
    final List<CustomerData> data = [];

    final List<dynamic>? characters = result.data?['characters']['results'];

    if (characters != null) {
      for (final character in characters) {
        data.add(CustomerData(
          customerName: character['name'],
          // customerInfo: character['status'],
          // customerlocation: character['id'],
          // Add other fields as needed.
        ));
      }
    }

    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Customer List'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  'Customer List',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.06,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: customerDataList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 10,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey.shade50,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Form(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Customer Name: ${customerDataList[index].customerName}',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              // Text(
                              //   'Customer Info: ${customerDataList[index].customerInfo}',
                              //   style: TextStyle(
                              //     decoration: TextDecoration.underline,
                              //   ),
                              // ),
                              // Text(
                              //   'Customer Location: ${customerDataList[index].customerlocation}',
                              //   style: TextStyle(
                              //     decoration: TextDecoration.underline,
                              //   ),
                              // ),
                              // Add other customer data fields here.
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ));
  }
}

class CustomerData {
  final String customerName;
  // final String customerInfo;
  // final String customerlocation;

  CustomerData({
    required this.customerName,
    // required this.customerInfo,
    // required this.customerlocation,
    // Add other fields as needed.
  });
}





// import 'package:flutter/material.dart';
// import 'package:graphql_flutter/graphql_flutter.dart';

// class CustomerList extends StatefulWidget {
//   const CustomerList({super.key});

//   @override
//   State<CustomerList> createState() => _CustomerListState();
// }

// class _CustomerListState extends State<CustomerList> {
//   List<CustomerData> customerDataList = [];

//   @override
//   void initState() {
//     super.initState();
//     // Simulate receiving data from a database.
//     // Replace this with your actual database retrieval logic.
//     fetchDataFromDatabase().then((data) {
//       setState(() {
//         customerDataList = data;
//       });
//     });
//   }

//   HttpLink link = HttpLink("https://rickandmortyapi.com/graphql");
//   GraphQLClient qlClient = GraphQLClient(
//     link: link,
//     cache: GraphQLCache(
//       store: HiveStore(),
//     ),
//   );

//   QueryResult queryResult= await qlClient.query(
//     QueryOptions(
//       document:gql(
//           """querry{
//             characters(){
//               result{
//                 name
//                 image
//               }
//             }
//           }""",
//     ),
//     ),
//   ),

//   Future<List<CustomerData>> fetchDataFromDatabase() async {
//     // Replace this with your actual database query.
//     // For example, you can use a package like 'http' or 'dio' to make HTTP requests to your server.
//     // In this example, we'll simulate data retrieval.

//     // await Future.delayed(
//     //     Duration(seconds: 2)); // Simulate a delay for data retrieval.

//     // Simulated data received from the database.
//     return [
//       CustomerData(
//         customerName: 'Customer 1',
//         email: 'customer1@example.com',
//         mainPhone: '1234567890',
//         customerType: 'Individual',
//       ),
//       CustomerData(
//         customerName: 'Customer 2',
//         email: 'customer2@example.com',
//         mainPhone: '9876543210',
//         customerType: 'Company',
//       ),
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           margin: const EdgeInsets.only(left: 20, top: 20),
//           child: Text(
//             'Customer List',
//             style: TextStyle(
//               fontSize: MediaQuery.of(context).size.width * 0.06,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//         ListView.builder(
//           shrinkWrap: true,
//           physics: const NeverScrollableScrollPhysics(),
//           itemCount: customerDataList.length,
//           itemBuilder: (context, index) {
//             return Padding(
//               padding: const EdgeInsets.all(20),
//               child: Container(
//                 width: MediaQuery.of(context).size.width * 10,
//                 decoration: BoxDecoration(
//                   color: Colors.blueGrey.shade50,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Form(
//                   child: Padding(
//                     padding: const EdgeInsets.all(15.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Customer Name: ${customerDataList[index].customerName}',
//                           style: TextStyle(
//                             decoration: TextDecoration.underline,
//                           ),
//                         ),
//                         Text(
//                           'Email: ${customerDataList[index].email}',
//                           style: TextStyle(
//                             decoration: TextDecoration.underline,
//                           ),
//                         ),
//                         Text(
//                           'Main Phone: ${customerDataList[index].mainPhone}',
//                           style: TextStyle(
//                             decoration: TextDecoration.underline,
//                           ),
//                         ),
//                         Text(
//                           'Customer Type: ${customerDataList[index].customerType}',
//                           style: TextStyle(
//                             decoration: TextDecoration.underline,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ],
//     );
//   }
// }

// class CustomerData {
//   final String customerName;
//   final String email;
//   final String mainPhone;
//   final String customerType;

//   CustomerData({
//     required this.customerName,
//     required this.email,
//     required this.mainPhone,
//     required this.customerType,
//   });
// }


// class CustomerList extends StatefulWidget {
//   const CustomerList({super.key});

//   @override
//   State<CustomerList> createState() => _CustomerListState();
// }

// class _CustomerListState extends State<CustomerList> {
//   // int numberOfAddress = 1;
//   String Customer_Name = "Waizsbd fbdk bkf h bxbf bdz,b zf b";
//   String Email = "ABC@vjsr";
//   String Main_Phone = "0312457896";
//   String Customer_type = "Individual";

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           margin: const EdgeInsets.only(left: 20, top: 20),
//           child: Text(
//             'Customer List',
//             style: TextStyle(
//               fontSize: MediaQuery.of(context).size.width * 0.06,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//         // ListView.builder(
//         // shrinkWrap: true,
//         // physics: const NeverScrollableScrollPhysics(),
//         // itemCount: numberOfAddress,
//         // itemBuilder: (context, index) {
//         // return
//         Padding(
//           padding: const EdgeInsets.all(20),
//           child: Container(
//             width: MediaQuery.of(context).size.width * 10,
//             decoration: BoxDecoration(
//               color: Colors.blueGrey.shade50,
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: Form(
//               child: Padding(
//                 padding: const EdgeInsets.all(15.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       Customer_Name,
//                       style: TextStyle(
//                         decoration: TextDecoration.underline,
//                       ),
//                     ),
//                     Text(
//                       Email,
//                       style: TextStyle(
//                         decoration: TextDecoration.underline,
//                       ),
//                     ),
//                     Text(
//                       Main_Phone,
//                       style: TextStyle(
//                         decoration: TextDecoration.underline,
//                       ),
//                     ),
//                     Text(
//                       Customer_type,
//                       style: TextStyle(
//                         decoration: TextDecoration.underline,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         )
//         // },
//         // ),
//       ],
//     );
//   }
// }


// //                         // TextFormField(
// //                         //   decoration: const InputDecoration(
// //                         //     hintText: 'Address',
// //                         //     labelText: 'Address',
// //                         //   ),
// //                         // ),

// //                         // TextFormField(
// //                         //   decoration: const InputDecoration(
// //                         //     hintText: 'State',
// //                         //     labelText: 'State',
// //                         //   ),
// //                         // ),

// //                         // TextFormField(
// //                         //   decoration: const InputDecoration(
// //                         //     hintText: 'City',
// //                         //     labelText: 'City',
// //                         //   ),
// //                         // ),

// //                         // TextFormField(
// //                         //   decoration: const InputDecoration(
// //                         //     hintText: 'Country ',
// //                         //     labelText: 'Country ',
// //                         //   ),
// //                         // ),

// //                         // TextFormField(
// //                         //   keyboardType: TextInputType.phone,
// //                         //   decoration: const InputDecoration(
// //                         //     hintText: 'Zip Code',
// //                         //     labelText: 'Zip Code',
// //                         //   ),
// //                         // ),

// //         // Padding(
// //         //   padding: const EdgeInsets.only(right: 20.0),
// //         //   child: Row(
// //         //     mainAxisAlignment: MainAxisAlignment.end,
// //         //     children: [
// //         //       ElevatedButton(
// //         //         style: ElevatedButton.styleFrom(
// //         //           shape: RoundedRectangleBorder(
// //         //             borderRadius: BorderRadius.circular(10),
// //         //           ),
// //         //         ),
// //         //         onPressed: () {
// //         //           // This button adds more address forms
// //         //         },
// //         //         child: const Icon(Icons.add_circle_outline),
// //         //       ),
// //         //     ],
// //         //   ),
// //         // )
// //       ],
// //     );
// //   }
// // }