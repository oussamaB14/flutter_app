import 'package:flutter/material.dart';
import 'package:flutter_app/src/presentation/shared/app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SharedAppBar(title: 'Home', backGroundColor: Colors.white),
      body: SingleChildScrollView(
        child: Column(
          children: [Text("home")],
        ),
      ),
    );
  }
}
