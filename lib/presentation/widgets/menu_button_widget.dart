import 'package:daily_topper_news/data/model/news_menu_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MenuButtonWidget extends StatelessWidget {
  const MenuButtonWidget({
    super.key,
    required this.onBtnTap,
    required this.menuData,
  });

  final NewsMenuModel menuData;
  final VoidCallback onBtnTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onBtnTap,
      child: Container(
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: 16.r, vertical: 8.r),
        child: Row(
          children: [
            Icon(menuData.menuIcon),
            SizedBox(width: 10.w),
            Text(
              menuData.menuName,
              style: TextStyle(
                color: const Color(0xFF3F3F3F),
                fontSize: 20.sp,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
