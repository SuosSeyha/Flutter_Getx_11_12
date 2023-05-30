import 'package:flutter/material.dart';
import 'package:flutter_getx_11_12/counter_app_controller.dart';
import 'package:get/get.dart';
class CounterApp extends StatelessWidget {
 CounterApp({super.key});
  ConterAppController controller = Get.put(ConterAppController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Counter App'
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                controller.discrenment();
              },
              child: const Icon(
                Icons.remove
              ),
            ),
             Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 50
              ),
              child: Obx(() => Text(
                controller.count.value.toString(),
                style: const TextStyle(
                  fontSize: 50,
                ),
              ),)
            ),
            ElevatedButton(
              onPressed: () {
                controller.increment();
              },
              child: const Icon(
                Icons.add
              ),
            )
          ],
        ),
      ),
    );
  }
}