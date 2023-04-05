import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joing_app/views/chat-view.dart';
import 'package:joing_app/views/feed_view.dart';
import 'package:joing_app/views/home_view.dart';
import 'package:joing_app/views/profile_view.dart';
class MainWrapperController extends GetxController {
  late PageController pageController;

  RxInt currentPage = 0.obs;
  RxBool isDarkTheme = false.obs;

  List screen = [
  HomeView(),
  const FeedView(),
  const ChatView(),
  const ProfileView(),
];

  ThemeMode get theme => Get.isDarkMode ? ThemeMode.dark : ThemeMode.light;

  void switchTheme(ThemeMode mode) {
    Get.changeThemeMode(mode);
  }

  void goToTab(int page) {
    currentPage.value = page;
    pageController.jumpToPage(page);
  }
  void animateToTab(int page) {
    currentPage.value = page;
   pageController.animateToPage(page,
              duration: const Duration(milliseconds: 300),
              curve: Curves.ease);
  }

  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
    super.onInit();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}