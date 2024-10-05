import 'package:daily_topper_news/application/app_bindings.dart';
import 'package:daily_topper_news/application/theme_manager.dart';
import 'package:daily_topper_news/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DailyTopper extends StatelessWidget {
  const DailyTopper({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: MediaQuery.of(context).size.width > 600
            ? const Size(834, 1194) // Tablet design size
            : const Size(430, 932), // Mobile design size
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Daily Topper',
            theme: ThemeManager.getAppTheme(),
            initialBinding: AppBindings(),
            home: const SplashScreen(),
          );
        });
  }
}
