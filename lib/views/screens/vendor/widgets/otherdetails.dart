import 'package:acounting_max/Provider/VendorProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OtherDetails extends StatefulWidget {
  const OtherDetails({super.key});

  @override
  State<OtherDetails> createState() => _OtherDetailsState();
}

class _OtherDetailsState extends State<OtherDetails> {
  final List<String> currencies = [
    'USD- United States Dollar',
    'INR- Indian Rupee',
    'CAD- Canadian Dollar',
    'SAR- Saudi Riyal',
    'EUR- Euro',
    'JPY- Japnnese Yen',
    'GBP- Pound Sterling',
    'PKR- Pakistani Rupee',
    'AUD- Australian Dollar',
    'MYR- Malaysian Ringgits',
    'IDR- Indonesian Rupiah',
    'SGD- Singapore Dollar',

    // Add more currencies here if needed
  ];
  final List<String> PaymentTerms = [
    'Due on Receipt',
    'Net 15',
    'Net 30',
    'Net 45',
    'Net 60',
    'Due end of the month',
    'Due end of next month',
  ];

  String selectedCurrency = 'USD- United States Dollar'; // Default selected currency
  String selectedPaymentTerm = 'Due on Receipt'; // Default selected payment term

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.centerStart, // Align content to the left side
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.03,
          horizontal: MediaQuery.of(context).size.width * 0.05,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Other Details',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.06,
                fontWeight: FontWeight.bold,
                // decoration: TextDecoration.underline,
              ),
            ),
            const SizedBox(height: 35),
            // Currency Dropdown
            DropdownButtonFormField<String>(
              value: selectedCurrency,
              onChanged: (newValue) {
                setState(() {
                  selectedCurrency = newValue!;
                
                           context
                                .read<VenderProvider>()
                                .updateCurrencies(newValue as List<String>);
                      
                });
              },
              items: currencies.map<DropdownMenuItem<String>>((currency) {
                return DropdownMenuItem<String>(
                  value: currency,
                  child: Text(currency),
                );
              }).toList(),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Currency',
                contentPadding: EdgeInsets.symmetric(horizontal: 12),
              ),
            ),
            const SizedBox(height: 10),
            // TextFormField
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Amount',
                contentPadding: EdgeInsets.symmetric(horizontal: 12),
              ),
              onChanged: (value) {
                 context
                                .read<VenderProvider>()
                                .updateAmount(value);
              },
            ),
            const SizedBox(height: 11),
            // Payment terms Dropdown
            DropdownButtonFormField<String>(
              value: selectedPaymentTerm,
              onChanged: (newValue) {
                setState(() {
                  selectedPaymentTerm = newValue!;
                  context
                                .read<VenderProvider>()
                                .updatePaymentTerms(newValue as List<String>);
                });
              },
              items: PaymentTerms.map<DropdownMenuItem<String>>((PaymentTerms) {
                return DropdownMenuItem<String>(
                  value: PaymentTerms,
                  child: Text(PaymentTerms),
                );
              }).toList(),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Payment Terms',
                contentPadding: EdgeInsets.symmetric(horizontal: 12),
              ),
            ),// Add more widgets here if needed.
          ],
        ),
      ),
    );
  }
}
