import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Homepage extends StatelessWidget {
  const Homepage({super.key});
  void showDailog(){
    Get.defaultDialog(
     // content: Widget,
      backgroundColor: Colors.black,
      title: 'Hello',
      titleStyle: const TextStyle(
        fontSize: 20,
        color: Colors.white
      ),
      middleText: 'This my first app',
      middleTextStyle: const TextStyle(
        fontSize: 20,
        color: Colors.white
      ),
      onCancel: () {
        
      },
      onConfirm: () {
        Get.back();
       // Navigator.pop(context);
      },
      barrierDismissible: false,
      cancelTextColor: Colors.amber,
      confirmTextColor: Colors.pink,
      buttonColor: Colors.grey,
      content: const Icon(Icons.home,color: Colors.white,size: 50,)
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dialog'
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDailog();
          },
          child: const Text('Dialog'),
        ),
      ),
    );
  }
}