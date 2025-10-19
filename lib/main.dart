import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Navigator/FivePage.dart';
import 'Navigator/FourPage.dart';
import 'Navigator/FristPage.dart';
import 'Navigator/SecondPage.dart';
import 'Navigator/ThirdPage.dart';
import 'Ui_Design/ui_design.dart';
import 'Widget_1/ContainerWidget.dart';
import 'Widget_1/DividerWidget.dart';
import 'Widget_1/IconWidget.dart';
import 'Widget_1/ImageWidget.dart';
import 'Widget_1/RichText.dart';
import 'Widget_1/SizeBoxWidget.dart';
import 'Widget_1/StackWidget.dart';
import 'Widget_2/ElevatedButton.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: FristPage(),
         initialRoute: '/Second',
         routes: {
        // '/':(context)=>FristPage(),
         '/Second':(context)=>SecondPage(data: '',),
         '/Third':(context)=>ThirdPage(),
         '/Four':(context)=>FourPage(),
         '/Five':(context)=>FivePage(),



         },


    );
  }
}




