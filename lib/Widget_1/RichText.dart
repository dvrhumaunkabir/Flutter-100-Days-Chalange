import 'package:flutter/material.dart';

class RichtextWidget extends StatelessWidget {
  const RichtextWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text("Flutter batch 4"),),
    body: RichText(text:
    TextSpan(
    children: [
    TextSpan(text: "Assalamu",style: TextStyle(color: Colors.pink,fontSize: 40),),
    TextSpan(text: "Alaikum",style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold),),
    ]
    ),
    ),
    );









  }
}
