import 'package:flutter/material.dart';
import 'package:flutter_100_days_chalange/Navigator/FivePage.dart';

class FourPage extends StatelessWidget {
  const FourPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        title: Text('FourPage'),),
      body: Center(
        child: ElevatedButton(onPressed: (){

//Navigator.push(context, MaterialPageRoute(builder: (context)=>FivePage()));
        Navigator.pushNamed(context,'/Five');

},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),),
            ),
            child: Text("Go to Five")),
      ),






    );
  }
}
