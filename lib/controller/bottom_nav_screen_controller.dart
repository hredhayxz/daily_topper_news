import 'package:daily_topper_news/presentation/screens/home_screen.dart';
import 'package:daily_topper_news/presentation/screens/notification_screen.dart';
import 'package:daily_topper_news/presentation/screens/profile_screen.dart';
import 'package:daily_topper_news/presentation/screens/sved_news_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavScreenController extends GetxController {
  int currentIndex = 0;

  // Screens list
  final List<Widget> _screens = const [
    HomeScreen(),
    SavedNewsScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  List<Widget> get screens => _screens;

  // Method for change bottom nav screen
  void changeNavIndex(int value) {
    currentIndex = value;
    update();
  }
}
