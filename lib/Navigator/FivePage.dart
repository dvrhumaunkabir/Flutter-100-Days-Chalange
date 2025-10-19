import 'package:flutter/material.dart';

class FivePage extends StatelessWidget {
  const FivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
      backgroundColor: Colors.orange,
      foregroundColor: Colors.white,
      title: Text('FivePage'),),
      body: Center(
        child: ElevatedButton(onPressed: (){
         Navigator.pop(context);
          },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),),
            ),
            child: Text("Back to Four")),
      ),
    );
  }
}
