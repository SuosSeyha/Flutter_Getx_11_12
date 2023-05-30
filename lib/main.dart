import 'package:flutter/material.dart';
import 'package:flutter_getx_11_12/Localization/util/login_traslation.dart';
import 'package:flutter_getx_11_12/Localization/view/login_screen.dart';
import 'package:flutter_getx_11_12/counter_app.dart';
import 'package:flutter_getx_11_12/home_screen.dart';
import 'package:flutter_getx_11_12/homepage.dart';
import 'package:flutter_getx_11_12/screen1.dart';
import 'package:flutter_getx_11_12/theme_color.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: LoginTranslation(), // your translations
      locale: Locale('EN','en'),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      defaultTransition: Transition.fade,
      debugShowCheckedModeBanner: false,
      home:  LoginScreen(),
    );
  }
}

