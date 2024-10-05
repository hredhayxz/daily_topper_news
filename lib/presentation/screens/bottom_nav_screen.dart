import 'package:daily_topper_news/controller/bottom_nav_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavScreen extends StatelessWidget {
  const BottomNavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavScreenController>(
      builder: (navController) {
        return Scaffold(
          body: navController.screens[navController.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: navController.currentIndex,
            onTap: (int index) => navController.changeNavIndex(index),
            backgroundColor: Colors.white,
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.grey,

            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,

            // Start bottom navigation item section
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.save),
                label: 'Save News',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: 'Notifications',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
            // End bottom navigation item section
          ),
        );
      },
    );
  }
}
