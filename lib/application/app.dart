import 'package:daily_topper_news/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DailyTopper extends StatelessWidget {
  const DailyTopper({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Daily Topper',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
