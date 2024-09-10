import 'package:flutter/material.dart';
import 'package:flutter_app/src/presentation/shared/app_bar.dart';
import 'package:lets_theme/lets_theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const SharedAppBar(
        title: 'Home',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 12),
            Text(
              'Current Theme Mode',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                LetsTheme.of(context).mode.name.toUpperCase(),
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
            const SizedBox(height: 24),
            const LetsThemeToggle(),
            const SizedBox(height: 24),
            const LetsThemeToggle.card(), // New since v0.0.2
            const SizedBox(height: 24),
            const LetsThemeToggle.compact(),
            const SizedBox(height: 24),
            const LetsThemeToggle.label(),
            const SizedBox(height: 24),
            const LetsThemeToggle.icon(),
          ],
        ),
      ),
    );
  }
}
