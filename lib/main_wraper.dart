
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joing_app/controller/main_wrap_controller.dart';
import 'package:joing_app/widgets/list_widget.dart';
class MainWrapper extends StatefulWidget {
  MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
    int currentIndex = 0;

  final MainWrapperController _mainWrapperController =
      Get.find<MainWrapperController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bottom AppBar Example",
          style: Theme.of(context).textTheme.subtitle1,
        ),
        centerTitle: true,
        actions: [
          Obx(
            () => Switch.adaptive(
              value: _mainWrapperController.isDarkTheme.value,
              onChanged: (newVal) {
                _mainWrapperController.isDarkTheme.value = newVal;
                _mainWrapperController
                    .switchTheme(newVal ? ThemeMode.dark : ThemeMode.light);
              },
            ),
          ),PageView(
        controller: _mainWrapperController.pageController,
        physics: const BouncingScrollPhysics(),
        onPageChanged: _mainWrapperController.animateToTab,
        children: [..._mainWrapperController.screen],
      ),
        ],
      ),
     
      body: screen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.black,
        iconSize: 36,
        //selectedFontSize: 16,
        //unselectedFontSize: 12,
        showSelectedLabels: false,
        showUnselectedLabels: false,

        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Feed',
              backgroundColor: Colors.yellow),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
            backgroundColor: Colors.teal,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.cyan,
          ),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      
    );
  }


}