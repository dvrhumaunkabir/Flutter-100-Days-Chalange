import 'package:flutter/material.dart';

class Imagewidget extends StatelessWidget {
  const Imagewidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
       // child: Image.asset("assets/images/homepp.png", width: 160,height: 160,),
        //-------------------------------Fit + Border radius সহ Container-এ ইমেজ,-------------------------------
        // child:Container(
        //   width: 100,
        //   height: 100,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(12),
        //     boxShadow: [
        //       BoxShadow(
        //         color: Colors.black26,
        //         blurRadius: 8,
        //         offset: Offset(3, 3),
        //       ),
        //     ],
        //   ),
        //   clipBehavior: Clip.hardEdge,
        //   child: Image.asset(
        //     "assets/images/homepp.png",
        //     fit: BoxFit.cover,
        //   ),
        // )
        //-------------------------------Overlay Color দেওয়া,-------------------------------
       // child: Image.asset(
       //   "assets/images/homepp.png",
       //   width: 60,
       //   height: 60,
       //   color: Colors.red.withOpacity(0.5),
       //   colorBlendMode: BlendMode.modulate,
       // )
       //  ,

        //-------------------------------লোডিং বা এরর হ্যান্ডলিং,-------------------------------
         child:Center(
          child: InkWell(
          onTap: () {
        print("Card tapped!");
    },
      child: Container(
        width: 150,
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.lightBlueAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8,
              offset: Offset(3, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/images/homepp.png",
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              "Home",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    ),


    ),





      ),
      
    );
  
  }
}
