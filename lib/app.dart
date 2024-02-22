import 'package:flutter/material.dart';
import 'package:nordangler/config/theme.dart';
import 'package:nordangler/playground/share_files.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: getLightTheme(),
        home: const App2());
  }
}
