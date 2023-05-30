import 'package:get/get.dart';
class ConterAppController extends GetxController{
  RxInt count=0.obs;
  void increment(){
     count++;
  }
  void discrenment(){
    count--;
  }
}