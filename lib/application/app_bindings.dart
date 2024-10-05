import 'package:daily_topper_news/controller/bottom_nav_screen_controller.dart';
import 'package:daily_topper_news/controller/home_screen_controller.dart';
import 'package:daily_topper_news/controller/splash_screen_controller.dart';
import 'package:get/get.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashScreenController());
    Get.put(BottomNavScreenController());
    Get.put(HomeScreenController());
  }
}
