import 'package:flutter/material.dart';
import 'package:lets_theme/lets_theme.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Switch Mode :",
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox( height: 3),
              const LetsThemeToggle.compact(),
            ],
          ),
        ));
  }
}
