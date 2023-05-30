import 'package:flutter/material.dart';
import 'package:flutter_getx_11_12/screen2.dart';
import 'package:get/get.dart';
class Screen1 extends StatelessWidget {
  const Screen1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        title: const Text(
          'Screen 1'
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
             Get.to(const Screen2());
            // Get.off(const Screen2());
            //Get.offAll(const Screen2());
            /*
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) {
              return const Screen2();
            },));
            */
          },
          child: const Text('Goo'),
        ),
      ),
    );
  }
}