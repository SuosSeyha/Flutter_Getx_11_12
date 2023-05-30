import 'package:flutter/material.dart';
import 'package:get/get.dart';
class LoginController extends GetxController{
  bool currentState=false;

  void setCurrentState(bool state){
    currentState = state;
    if(currentState){
      var locale = Locale('KH', 'kh');
      Get.updateLocale(locale);
    }else{
      var locale = Locale('EN', 'en');
      Get.updateLocale(locale);
    }
    update();
  }
}