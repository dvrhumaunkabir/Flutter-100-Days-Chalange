import 'package:flutter/material.dart';
import 'package:flutter_100_days_chalange/Custom_Widget/customInput.dart';
import '../../Custom_Widget/customButton.dart';
import '../../Custom_Widget/customCard.dart';

class HomePage extends StatefulWidget {
  final bool darkMode;
  final VoidCallback onToggleDarkMode;

  const HomePage({
    super.key,
    required this.darkMode,
    required this.onToggleDarkMode,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Design System'),
        actions: [
          IconButton(
            icon: Icon(widget.darkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: widget.onToggleDarkMode,
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          const CustomCard(
            title: 'Reusable Widgets',
            subtitle: 'Build once, use anywhere',
          ),
          const SizedBox(height: 20),
          CustomInputField(
              hintText: "Enter Your Name",
              icon: Icons.person,
          ),
          CustomInputField(
            hintText: "Enter Password",
            icon: Icons.lock,
            obscureText: true,
          ),
          const SizedBox(height: 20),
          CustomButton(
            label: 'Submit',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}