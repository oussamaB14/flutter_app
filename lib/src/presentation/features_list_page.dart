import 'package:flutter/material.dart';
import 'package:flutter_app/src/presentation/CurrencyConverter.dart';
import 'package:flutter_app/src/presentation/Todo.dart';
import 'package:flutter_app/src/presentation/movie.dart';
import 'package:flutter_app/src/presentation/shared/app_bar.dart';

class FeaturesListPage extends StatelessWidget {
  const FeaturesListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SharedAppBar(
          title: 'Features List', backGroundColor: Colors.white),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.euro),
            title: const Text('Currency Converter'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CurrencyConverter()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.task),
            title: const Text('Todo List '),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ToDoList()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.movie_outlined),
            title: const Text('Movies'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Movie()),
              );
            },
          )
          // Add more features here
        ],
      ),
    );
  }
}
