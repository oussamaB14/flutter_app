import 'package:flutter/material.dart';
import 'package:flutter_app/src/presentation/shared/app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SharedAppBar(
        title: 'Home',
        icon: Icons.home,
      ),
      body: Center(
        child: Text('Welcome to the Mini Projects App!'),
      ),
    );
  }
}
