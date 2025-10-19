import 'package:flutter/material.dart';
import 'package:flutter_100_days_chalange/Navigator/ThirdPage.dart';

class SecondPage extends StatelessWidget {
  final String data;
  const SecondPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        title: Text(data),),
        body: Center(
          child: ElevatedButton(onPressed: (){
          //  Navigator.push(context, MaterialPageRoute(builder: (context)=>ThirdPage(),),);
          Navigator.pushNamed(context,'/Third',
          arguments: "Hello Salman Farsi",
          );
          },style:
              ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                )
              )
              , child: Text("Go to Three")),
        )
    );
  }
}
