import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class ItemList extends StatefulWidget {
  const ItemList({Key? key}) : super(key: key);

  @override
  State<ItemList> createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  List<Map<String, dynamic>> items = [];

  @override
  void initState() {
    super.initState();
    fetchDataFromGraphQL();
  }

  Future<void> fetchDataFromGraphQL() async {
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
                    image
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

    setState(() {
      items = parseQueryResult(result);
    });
  }

  List<Map<String, dynamic>> parseQueryResult(QueryResult result) {
    final List<Map<String, dynamic>> data = [];

    final List<dynamic>? characters = result.data?['characters']['results'];

    if (characters != null) {
      for (final character in characters) {
        data.add({
          'Name': character['name'],
          // 'Code': character['code'],
          // 'Quantity': character['quantity'],
          'image': character['image'], 
        });
      }
    }

    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item List'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade50,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            items[index]['image'],
                            width: 100,
                            height: 100,
                          ),
                          Text(
                            'Name: ${items[index]["Name"]}',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          // Text(
                          //   'Code: ${items[index]["Code"]}',
                          //   style: TextStyle(
                          //     decoration: TextDecoration.underline,
                          //   ),
                          // ),
                          // Text(
                          //   'Quantity: ${items[index]["Quantity"]}',
                          //   style: TextStyle(
                          //     decoration: TextDecoration.underline,
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
