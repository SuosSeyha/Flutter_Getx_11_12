import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Screen2 extends StatelessWidget {
  const Screen2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'Screen 2'
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child: const Text('Back'),
        ),
      ),
    );
  }
}