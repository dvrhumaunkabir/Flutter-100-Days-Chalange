import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'counter_controller.dart';
class mainPage extends StatelessWidget {
   mainPage({super.key});

  final controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(controller.count.toString(),style: TextStyle(fontSize: 40),),

      ),
      floatingActionButton: FloatingActionButton(onPressed: ()=>controller.increment(),child:
        Icon(Icons.add),
      ),
    );
  }
}
