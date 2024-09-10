import 'package:flutter/material.dart';
import 'package:flutter_app/src/app.dart';
import 'package:lets_theme/lets_theme.dart';


Future<void> main()  async {
    WidgetsFlutterBinding.ensureInitialized();
  final ThemeMode? savedThemeMode = await LetsTheme.getThemeMode();
  runApp(MyApp(savedThemeMode: savedThemeMode));
}
