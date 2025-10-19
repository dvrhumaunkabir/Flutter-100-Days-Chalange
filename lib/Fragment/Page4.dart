import 'package:flutter/material.dart';

class Fragment4 extends StatelessWidget {
  const Fragment4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Page 4",style: TextStyle(color: Colors.orange,fontSize: 40,fontWeight: FontWeight.bold),),
      ),
    );
  }
}