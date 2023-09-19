import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class VendorList extends StatefulWidget {
  const VendorList({Key? key}) : super(key: key);

  @override
  State<VendorList> createState() => _VendorListState();
}

class _VendorListState extends State<VendorList> {
  List<VendorData> vendorDataList = [];

  @override
  void initState() {
    super.initState();
    fetchDataFromDatabase();
  }

  Future<void> fetchDataFromDatabase() async {
    // Perform GraphQL query to fetch vendor data.
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
            characters {
              results {
                name
              }
            }
          }
          """,
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
      vendorDataList = parseQueryResult(result);
    });
  }

  List<VendorData> parseQueryResult(QueryResult result) {
    // Parse the GraphQL query result and return a list of vendor data.
    final List<VendorData> data = [];

    final List<dynamic>? characters = result.data?['characters']['results'];

    if (characters != null) {
      for (final character in characters) {
        data.add(VendorData(
          vendorName: character['name'],
        ));
      }
    }

    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vendor List'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20, top: 20),
              child: Text(
                'Vendor List',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.06,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: vendorDataList.length,
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
                              'Vendor Name: ${vendorDataList[index].vendorName}',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            // Add other vendor data fields here.
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
      ),
    );
  }
}

class VendorData {
  final String vendorName;

  VendorData({
    required this.vendorName,
  });
}
