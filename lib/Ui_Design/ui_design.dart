import 'package:flutter/material.dart';

class UiDesign extends StatelessWidget {
  const UiDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
     leading: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back),),
     title: Text("Profile"),
     actions: [IconButton(onPressed: (){}, icon: Icon( Icons.shield_moon),),],
   ),


    );
  }
}
