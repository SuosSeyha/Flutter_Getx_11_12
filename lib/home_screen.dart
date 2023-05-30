import 'package:flutter/material.dart';
import 'package:flutter_getx_11_12/home_screen_controller.dart';
import 'package:get/get.dart';
class Homescreen extends StatelessWidget {
   Homescreen({super.key});
  
  List<String> listTitle=[
    'Home',
    'Search',
    'Profile',
    'Explore',
    'Public',
  ];
  List<IconData> listIcon=[
    Icons.home,
    Icons.search,
    Icons.person,
    Icons.explore,
    Icons.public
  ];
  HomeScreenController controller = Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'HomeScreen',
           style: TextStyle(
            fontSize: 20,
            color: Colors.red
           ),
        ),
      ),
      body: GetBuilder( // function update();
        init: HomeScreenController(),
        builder: (controller) {
          return Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    listTitle.length, (index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            controller.setCurrentIndex(index);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 10
                            ),
                            decoration: BoxDecoration(
                              color: controller.currentIndex==index?Colors.orangeAccent : Colors.white,
                              borderRadius: BorderRadius.circular(
                                20
                              ),
                              border: controller.currentIndex==index ? Border.all(
                                width: 2,
                                color: Colors.black
                              ): null
                            ),
                            child:  Text(
                              listTitle[index],
                              style:  TextStyle(
                                color: controller.currentIndex==index ? Colors.black : Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                ),
              ),
              Expanded(
                child: SizedBox(
                // height: mediaQuery.height,
                  width: mediaQuery.width,
                  child:  Icon(
                    listIcon[controller.currentIndex],
                    size: 400,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          );
        },
      )
    );
  }
}