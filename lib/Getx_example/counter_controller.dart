import 'package:get/get.dart';

class CounterController extends GetxController{

  var count = 0;

  void increment(){
    count +=1;
  }


  void decrement(){
    count -=1;
  }

}