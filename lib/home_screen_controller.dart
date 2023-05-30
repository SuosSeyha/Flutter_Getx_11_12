import 'package:get/get.dart';
class HomeScreenController extends GetxController{
  int currentIndex=0;
  void setCurrentIndex(int index){
    currentIndex=index;
    update();
  }
}