import 'package:flutter/material.dart';
import 'package:lemur/home_page.dart';
import 'package:lemur/themes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkTheme,
      darkTheme: darkTheme,
      home: const HomePage(),
    );
  }
}
