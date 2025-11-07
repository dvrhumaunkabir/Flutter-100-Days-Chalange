import 'package:flutter/material.dart';
import 'All Ui Design/Ui/HomePage.dart';
import 'Styles/appTheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool darkMode = false;

  void toggleDarkMode() {
    setState(() {
      darkMode = !darkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkMode ? AppTheme.darkTheme : AppTheme.lightTheme,
      home: HomePage(
        darkMode: darkMode,
        onToggleDarkMode: toggleDarkMode,
      ),
    );
  }
}