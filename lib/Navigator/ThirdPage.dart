import 'package:flutter/material.dart';
import 'package:flutter_100_days_chalange/Navigator/FourPage.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    final String data = ModalRoute.of(context)?.settings.arguments as String? ?? "No Data Found";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        title: Text(data),),
  body: Center(
    child: ElevatedButton(onPressed: (){

     // Navigator.push(context, MaterialPageRoute(builder: (context)=>FourPage(),),);
      Navigator.pushNamed(context,'/Four');
    },
        style: ElevatedButton.styleFrom(
         backgroundColor: Colors.orange,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),),
        ),
        child: Text("Go to Four")),
  ),


    );
  }
}

