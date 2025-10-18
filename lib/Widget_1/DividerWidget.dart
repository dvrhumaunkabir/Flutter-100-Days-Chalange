import 'package:flutter/material.dart';

class Dividerwidget extends StatelessWidget {
  const Dividerwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    appBar: AppBar(
    title: const Text('Wrap Widget Example'),
    centerTitle: true,
    ),
    body: FittedBox(
      child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 76.0),
      // child: Wrap(
      // spacing: 8.0, // এক লাইনে আইটেমগুলোর মধ্যে gap
      // runSpacing: 8.0, // এক লাইনের নিচে অন্য লাইনের মধ্যে gap
      // alignment: WrapAlignment.center, // প্রতিটি লাইনকে মাঝখানে রাখবে
      // clipBehavior: Clip.none, // বাইরে কিছু থাকলে কাটা হবে না
      // children: const [
      // Chip(label: Text("Flutter")),
      // Chip(label: Text("Dart")),
      // Chip(label: Text("Firebase")),
      // Chip(label: Text("Android")),
      // Chip(label: Text("SQLite")),
      // Chip(label: Text("REST API")),
      // Chip(label: Text("UI Design")),
      // Chip(label: Text("GitHub")),
      // Chip(label: Text("JSON")),
      // ],
      // ),
      
      
            child: Text('Hello Flutter!Hello Flutter! Hello Flutter! Hello Flutter! Hello Flutter!Hello Flutter! Hello Flutter!'),
      
      
      
      
      ),
    ),
    );


  }
}
