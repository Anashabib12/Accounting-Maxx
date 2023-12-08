import 'package:acounting_max/models/model.dart';
import 'package:acounting_max/models/modelDB.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:acounting_max/Provider/ItemFormDataProvider.dart';

// import 'package:acounting_max/services/isar_service.dart'; // Import the IsarService

class ItemFormWidget extends StatefulWidget {
  const ItemFormWidget({Key? key}) : super(key: key);

  @override
  _ItemFormWidgetState createState() => _ItemFormWidgetState();
}

class _ItemFormWidgetState extends State<ItemFormWidget> {
  final TextEditingController itemNameController = TextEditingController();
  final TextEditingController itemCodeController = TextEditingController();
  final TextEditingController purchasePriceController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    // Load the form data when the widget initializes
    context.read<ItemFormProvider>().loadFormData(IsarService());
  }

  void saveFormData() {
    // Save the form data using the provider
    context.read<ItemFormProvider>().saveItemToIsar(IsarService());

    // Save the form data to Isar
    final databaseService = Provider.of<IsarService>(context, listen: false);
    final newItem = Item(
      itemName: itemNameController.text,
      itemCode: itemCodeController.text,
      purchasePrice: purchasePriceController.text,
    );
    databaseService.saveItem(newItem);
  }
  // void loadFormData() async {
  //   final databaseService = Provider.of<IsarService>(context, listen: false);
  //   // final databaseService = context.read<IsarService>();
  //   final storedData = await databaseService.getAllItems();

  //   if (storedData.isNotEmpty) {
  //     setState(() {
  //       itemNameController.text = storedData[0].itemName;
  //       itemCodeController.text = storedData[0].itemCode;
  //       purchasePriceController.text = storedData[0].purchasePrice;
  //     });
  //   }
  // }

  // void saveFormData() async {
  //   final databaseService = Provider.of<IsarService>(context, listen: false);
  //   final newItem = Item(
  //     itemName: itemNameController.text,
  //     itemCode: itemCodeController.text,
  //     purchasePrice: purchasePriceController.text,
  //     // timestamp: DateTime.now(),
  //   );

  //   await databaseService.saveItem(newItem);
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 25.0, right: 25, top: 20.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: itemNameController,
              decoration: const InputDecoration(
                hintText: 'Item Name',
                labelText: 'Item Name',
              ),
              onChanged: (value) {
                context.read<ItemFormProvider>().updateItemName(value);
// You can remove this line as it is not necessary with Isar
              },
            ),
            TextFormField(
              controller: itemCodeController,
              decoration: const InputDecoration(
                hintText: 'Item Code',
                labelText: 'Item Code',
              ),
              onChanged: (value) {
                context.read<ItemFormProvider>().updateItemCode(value);
              },
            ),
            TextFormField(
              controller: purchasePriceController,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
              ],
              decoration: const InputDecoration(
                hintText: 'Purchase Price',
                labelText: 'Purchase Price',
              ),
              onChanged: (value) {
                context.read<ItemFormProvider>().updatePurchasePrice(value);
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Save the form data using the provider
                  context.read<ItemFormProvider>().saveItemToIsar(IsarService());
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Item added to database'),
                    ),
                  );
                }
              },
              child: Text('Add Item'),
            ),
          ],
        ),
      ),
    );
  }
}
