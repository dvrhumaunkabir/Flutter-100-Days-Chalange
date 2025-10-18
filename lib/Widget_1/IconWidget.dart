import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Icon"),),
      body: Center(
        // ......................... Sample Design.............................................
        child: Icon(Icons.favorite,size: 100, color: Colors.red,),

        // ............................. shadow add .........................................

       //  child: Icon(Icons.favorite,size: 100, color: Colors.red,
       //    shadows: [
       //      Shadow(
       //      color: Colors.black45,
       //      blurRadius: 5,
       //      offset: Offset(3, 3),
       //    )
       //  ],
       //  ),
       //  child: Container(
       //    padding: EdgeInsets.all(20),
       //    decoration: BoxDecoration(
       //      color: Colors.blue.shade50,
       //      shape: BoxShape.circle,
       //      boxShadow: [
       //        // কার্ড সিস্টেম করতে চাইলে
       //        BoxShadow(color: Colors.grey, blurRadius: 10, offset: Offset(2, 2)),
       //      ],
       //    ),
       //    child: Icon(Icons.favorite, size: 80, color: Colors.red),
       //  ),
        // ............................ Background যোগ করতে (Container দিয়ে)..........................................
        // child: Container(
        //   padding: EdgeInsets.all(20),
        //   decoration: BoxDecoration(
        //     color: Colors.grey,
        //     shape: BoxShape.circle,
        //     boxShadow: [
        //       BoxShadow(
        //         color: Colors.black87,
        //         blurRadius: 10,
        //         offset: Offset(3, 3),
        //       )
        //     ]
        //   ),
        //   child: Icon(Icons.favorite,
        //   size: 80,
        //     color: Colors.red,
        //   ),
        //
        // ),

        // ............................Animation দিতে (AnimatedContainer বা AnimatedOpacity দিয়ে):..........................................
        // child: AnimatedOpacity(
        //     opacity: 1,
        //     duration: Duration(seconds: 2),
        //     child: Icon(Icons.favorite,
        //     size: 100,color: Colors.pink,
        //     ),
        // ),
        // ............................ Tap করার সুবিধা দিতে (InkWell বা GestureDetector দিয়ে):..........................................
        //  child:  GestureDetector(
        //    onTap: (){},
        //     child: Icon(Icons.thumb_up, color: Colors.blue, size: 70),
        //   )
        // ............................ Gradient Color দিতে (ShaderMask দিয়ে)::................................
        //  child:  ShaderMask(
        //     shaderCallback: (bounds) => LinearGradient(
        //       colors: [Colors.red, Colors.orange],
        //       begin: Alignment.topLeft,
        //       end: Alignment.bottomRight,
        //     ).createShader(bounds),
        //     child: Icon(Icons.favorite, size: 100, color: Colors.white),
        //   )







      ),

    );
  }
}
