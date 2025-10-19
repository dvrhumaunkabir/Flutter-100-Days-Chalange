import 'package:flutter/material.dart';
import 'package:flutter_100_days_chalange/Navigator/SecondPage.dart';

class FristPage extends StatelessWidget {
  const FristPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
        title: Text("Home Page"),),
      body:Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to page 2 or perform action
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage(data:"Hello Flutter")));
          // Navigator.pushNamed(context, '/Second');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(6),),
          ),
          child: const Text("2 Page Go"),
        ),

      ) ,

    );
  }
}
