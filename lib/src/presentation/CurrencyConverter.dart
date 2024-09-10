import 'package:flutter/material.dart';
import 'package:flutter_app/src/presentation/shared/app_bar.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});

  @override
  _CurrencyConverterState createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
  final TextEditingController _amountController = TextEditingController();
  String _fromCurrency = 'EUR';
  String _toCurrency = 'TND';
  double? _convertedAmount;

  // Dummy conversion rates for simplicity
  final Map<String, double> _conversionRates = {
    'EUR_TO_TND': 3.3,
    'TND_TO_EUR': 0.3,
  };

  void _convertCurrency() {
    final amount = double.tryParse(_amountController.text);
    if (amount != null) {
      setState(() {
        if (_fromCurrency == 'EUR' && _toCurrency == 'TND') {
          _convertedAmount = amount * _conversionRates['EUR_TO_TND']!;
        } else if (_fromCurrency == 'TND' && _toCurrency == 'EUR') {
          _convertedAmount = amount * _conversionRates['TND_TO_EUR']!;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SharedAppBar(
        title: 'Currency Converter',
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _amountController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Amount',
              ),
            ),
            const SizedBox(height: 16),
            DropdownButton<String>(
              value: _fromCurrency,
              items: ['EUR', 'TND']
                  .map((currency) => DropdownMenuItem(
                        value: currency,
                        child: Text(currency),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _fromCurrency = value!;
                });
              },
            ),
            DropdownButton<String>(
              value: _toCurrency,
              items: ['EUR', 'TND']
                  .map((currency) => DropdownMenuItem(
                        value: currency,
                        child: Text(currency),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _toCurrency = value!;
                });
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _convertCurrency,
              child: const Text('Convert'),
            ),
            const SizedBox(height: 16),
            if (_convertedAmount != null)
              Text(
                'Converted Amount: $_convertedAmount $_toCurrency',
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
    );
  }
}
