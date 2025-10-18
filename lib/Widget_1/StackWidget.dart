import 'package:flutter/material.dart';

class Stackwidget extends StatelessWidget {
  const Stackwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        alignment: Alignment.centerRight,
        children: [
          Container(
            width: 400,height: 200,color: Colors.red,
          ), Container(
            width: 100,height: 100,color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
