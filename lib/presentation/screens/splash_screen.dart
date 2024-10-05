import 'package:daily_topper_news/controller/splash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            child: Center(
              child: Text(
                'Daily Topper',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          GetBuilder<SplashScreenController>(builder: (splashController) {
            return Text(
              'Version: ${splashController.appVersion}+${splashController.buildNumber}',
              style: const TextStyle(color: Colors.grey),
            );
          }),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
