import 'package:flutter/material.dart';
import 'package:flutter_app/src/presentation/shared/app_bar.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});

  @override
  _CurrencyConverterState createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
  final TextEditingController _amountController = TextEditingController();

  void _convertCurrency() {
    setState(() {
      double amount = double.tryParse(_amountController.text) ?? 0;

      if (groupValue == "EuroToDinar") {
        result = amount * 3.4;
      } else if (groupValue == "DinarToEuro") {
        result = amount / 3.4;
      }
      print(amount);
      print(result);
    });
  }

  String groupValue = "EuroToDinar";
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SharedAppBar(title: 'TP1', backGroundColor: Colors.purple),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _amountController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Montant',
                ),
              ),
              const SizedBox(height: 16),
              RadioListTile(
                  title: const Text("Euro To Dinar 😁"),
                  value: "EuroToDinar",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value.toString();
                    });
                  }),
              RadioListTile(
                  title: const Text("DinarToEuro"),
                  value: "DinarToEuro",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value.toString();
                    });
                  }),
              const SizedBox(height: 16),
              ElevatedButton(
                  onPressed: _convertCurrency,
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all(Colors.purple[600]),
                  ),
                  child: const Text(
                    'Convert',
                    style: TextStyle(color: Colors.white),
                  )),
              const SizedBox(height: 16),
              Text(
                'Result : $result',
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
