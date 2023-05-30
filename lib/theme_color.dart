import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ThemeColor extends StatelessWidget {
  const ThemeColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Facebook'
        ),
      ),
      body: Column(
        children: [
          const Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Get.changeTheme(ThemeData.from(
                  //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent)
                  // ));
                  Get.changeTheme(ThemeData.dark());
                }, 
                child: const Text(
                  'Dark'
                )
              ),
              ElevatedButton(
                onPressed: () {
                   Get.changeTheme(ThemeData.light());
                }, 
                child: const Text(
                  'Light'
                )
              )
            ],
          )
        ],
      ),
    );
  }
}