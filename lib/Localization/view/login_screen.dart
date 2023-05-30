import 'package:flutter/material.dart';
import 'package:flutter_getx_11_12/Localization/controller/login_controller.dart';
import 'package:get/get.dart';
class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
  LoginController controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  Text('login'.tr),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 8
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text(
                      'en'.tr,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    GetBuilder(
                      init: LoginController(),
                      builder: (controller) {
                        return Switch(
                        value: controller.currentState, 
                        onChanged: (value) {
                          controller.setCurrentState(value);
                        },
                      );
                      },
                    ),
                     Text(
                      'kh'.tr,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                  'log in with onw of following options'.tr,
                  style: const TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold
                  ),
                ),
                ),
                const SizedBox(
                  height: 40,
                ),
                 Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10
                  ),
                  child: Text(
                    'email'.tr,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'enter your email'.tr,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    focusedBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                      borderSide: const BorderSide(
                        width: 3,
                        color: Colors.deepOrange,
                      )
                    )
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10
                  ),
                  child: Text(
                    'password'.tr,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'enter your password'.tr,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    focusedBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                      borderSide: const BorderSide(
                        width: 3,
                        color: Colors.deepOrange,
                      )
                    )
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height*0.04
                  ),
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height*0.08,
                  width:  MediaQuery.of(context).size.width,
                  decoration:  BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(
                      20
                    ),
                    gradient:   const LinearGradient(
                      colors: [
                        Color(0xffC654F3),
                        Colors.pink
                      ]
                    )
                  ),
                  child:  Text(
                    'login'.tr,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Text(
                      "don't have an account?".tr,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                     ),
                     TextButton(
                      onPressed: () {
                        
                      }, 
                      child:  Text(
                        'sign up'.tr,
                        style: const TextStyle(
                        fontSize: 18,
                      ),
                      )
                    )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}