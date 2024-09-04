import 'package:flutter/material.dart';
import 'package:flutter_app/src/presentation/CurrencyConverter.dart';
import 'package:flutter_app/src/presentation/shared/app_bar.dart';

class FeaturesListPage extends StatelessWidget {
  const FeaturesListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SharedAppBar(
        title: 'Features List',
        icon: Icons.list,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.euro),
            title: const Text('Currency Converter'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CurrencyConverter()),
              );
            },
          ),
          // Add more features here
        ],
      ),
    );
  }
}
