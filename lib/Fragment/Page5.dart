import 'package:flutter/material.dart';

class Fragment5 extends StatelessWidget {
  const Fragment5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Page 5",style: TextStyle(color: Colors.red,fontSize: 40,fontWeight: FontWeight.bold),),
      ),
    );
  }
}