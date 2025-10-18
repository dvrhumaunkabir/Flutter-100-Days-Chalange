import 'package:flutter/material.dart';

class Containerwidget extends StatelessWidget {
  const Containerwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Center(
    // child:Container(
    //   width: 150,
    //   height: 100,
    //   padding: EdgeInsets.all(10),
    //   margin: EdgeInsets.all(20),
    //   color: Colors.blue,
    //   child: Text("Hello",
    //   textAlign: TextAlign.center,
    //   ),
    // ),

        // child:Container(
        //   width: 150,
        //   height: 150,
        //   decoration: BoxDecoration(
        //     color: Colors.orange,
        //     borderRadius: BorderRadius.circular(20), // Rounded corners
        //     boxShadow: [
        //       BoxShadow(
        //         color: Colors.black26,
        //         blurRadius: 5,
        //         offset: Offset(3,3),
        //       ),
        //     ],
        //     gradient: LinearGradient(
        //       colors: [Colors.red, Colors.yellow],
        //       begin: Alignment.topLeft,
        //       end: Alignment.bottomRight,
        //     ),
        //   ),
        // )
        // ,

    // child: Container(
    //   width: 100,
    //   height: 100,
    //   decoration: BoxDecoration(
    //     shape: BoxShape.circle,
    //     border: Border.all(color: Colors.green, width: 4),
    //     color: Colors.lightGreen,
    //   ),
    // )
    //     ,

        // child: Container(
        //   width: 120,
        //   height: 120,
        //   decoration: BoxDecoration(
        //     image: DecorationImage(
        //       image: AssetImage("assets/images/homepp.png"),
        //       fit: BoxFit.cover,
        //     ),
        //     borderRadius: BorderRadius.circular(15),
        //   ),
        //   child: Center(
        //     child: Icon(Icons.home, size: 50, color: Colors.white),
        //   ),
        // )
        // ,

// child: GestureDetector(
//   onTap: () {
//     print("Container tapped!");
//   },
//   child: Container(
//     width: 100,
//     height: 100,
//     color: Colors.purple,
//     child: Center(child: Text("Tap Me")),
//   ),
// )
//         ,

child: AnimatedContainer(
  duration: Duration(seconds: 1),
  width: 150,
  height: 150,
  decoration: BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(20),
  ),
)
        ,


      ),
    );
  }
}
