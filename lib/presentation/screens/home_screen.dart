import 'package:daily_topper_news/controller/home_screen_controller.dart';
import 'package:daily_topper_news/presentation/utils/assets.dart';
import 'package:daily_topper_news/presentation/widgets/menu_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeScreenController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 56.h),
          Center(
              child: Image.asset(
            Assets.dtLogoPNG,
            height: 57.h,
            width: 203.w,
            fit: BoxFit.cover,
          )),
          SizedBox(height: 56.h),
          ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 16.r),
            itemCount: controller.menuData.length,
            itemBuilder: (context, index) {
              return MenuButtonWidget(
                  menuData: controller.menuData[index], onBtnTap: () {});
            },
            separatorBuilder: (context, index) => SizedBox(height: 11.h),
          ),
        ],
      ),
    );
  }
}
