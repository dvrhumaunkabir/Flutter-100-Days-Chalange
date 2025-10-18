import 'package:flutter/material.dart';

class AppButtonStyle {
  // Elevated Button
  static final ButtonStyle elevatedButton = ElevatedButton.styleFrom(
    backgroundColor: Colors.deepPurple,
    foregroundColor: Colors.white,
    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    elevation: 6,
  );








  // Text Button
  static final ButtonStyle textButton = TextButton.styleFrom(
    foregroundColor: Colors.deepPurple,
    textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
  );

  // Outlined Button
  static final ButtonStyle outlinedButton = OutlinedButton.styleFrom(
    foregroundColor: Colors.deepPurple,
    side: const BorderSide(color: Colors.deepPurple, width: 2),
    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  );

  // Floating Action Button Style (if you want custom FAB colors)
  static final Color fabBackground = Colors.deepPurple;

}
class AppToast {
  static void show(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 2),
      behavior: SnackBarBehavior.floating, // floating style
      margin: const EdgeInsets.all(16),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}