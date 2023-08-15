import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    'SGD- Singaporean dollars',
    'IDR- Indonesian rupiah'
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
      alignment: AlignmentDirectional.centerStart,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                
                'Other Details',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.06,
                  
            
                ),
              ),
            ),
            const SizedBox(height: 35),
            // Currency Dropdown
            DropdownButtonFormField<String>(
              value: selectedCurrency,
              onChanged: (newValue) {
                setState(() {
                  selectedCurrency = newValue!;
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
               keyboardType: TextInputType.phone,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Amount',
                contentPadding: EdgeInsets.symmetric(horizontal: 12),
                
              ),
             
            ),
            const SizedBox(height: 11),
            // Payment terms Dropdown
            DropdownButtonFormField<String>(
              value: selectedPaymentTerm,
              onChanged: (newValue) {
                setState(() {
                  selectedPaymentTerm = newValue!;
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
      );
    
  }
}