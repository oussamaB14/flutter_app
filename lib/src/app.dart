import 'package:flutter/material.dart';
import 'package:flutter_app/src/presentation/navigation/app-router.dart';
import 'package:lets_theme/lets_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.savedThemeMode});
final ThemeMode? savedThemeMode;
  @override
  Widget build(BuildContext context) {
    return LetsTheme(
      light: ThemeData.light(useMaterial3: true),
      dark: ThemeData.dark(useMaterial3: true),
      initialMode: savedThemeMode ?? ThemeMode.light,
      builder: (ThemeData light, ThemeData dark) => MaterialApp(
        title: "My Flutter App",
        theme: light,
        darkTheme: dark,
        home: const HomeScreen(),
      ),
    );
  }
  /* Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mini Projects App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}*/
}
