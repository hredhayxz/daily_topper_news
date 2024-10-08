import 'package:daily_topper_news/controller/home_screen_controller.dart';
import 'package:daily_topper_news/presentation/screens/news_category_screen.dart';
import 'package:daily_topper_news/presentation/screens/news_details_screen.dart';
import 'package:daily_topper_news/presentation/utils/assets.dart';
import 'package:daily_topper_news/presentation/utils/package_dependency_wrappers.dart';
import 'package:daily_topper_news/presentation/widgets/menu_button_widget.dart';
import 'package:daily_topper_news/presentation/widgets/news_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeScreenController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 56.h),
            Center(
                child: Image.asset(
              Assets.dtLogoPNG,
              height: 57.h,
              width: 203.w,
              fit: BoxFit.cover,
            )),
            SizedBox(height: 40.h),
            // News menu button
            ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.all(16.r),
              itemCount: controller.menuData.length,
              itemBuilder: (context, index) {
                return MenuButtonWidget(
                    menuData: controller.menuData[index], onBtnTap: () {});
              },
              separatorBuilder: (context, index) => SizedBox(height: 11.h),
            ),
            SizedBox(height: 32.h),
            // News category section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.r, vertical: 8.r),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(
                      color: const Color(0xFF737373),
                      fontSize: 20.sp,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => const NewsCategoryScreen(),
                          transition: Transition.rightToLeft);
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'view all',
                          style: TextStyle(
                            color: const Color(0xFF3F3F3F),
                            fontSize: 20.sp,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        const Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.r),
              child: Row(
                children: [
                  SizedBox(
                    width: 96.h,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Wrapper.setCachedNetworkImage(
                            imageUrl:
                                'https://media.cnn.com/api/v1/images/stellar/prod/20240303-03-trump-biden-split-20240304120045189.jpg',
                            fit: BoxFit.fill,
                            width: 96.h,
                            height: 96.h,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          'National',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: const Color(0xFF525252),
                            fontSize: 12.sp,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Opacity(
                    opacity: 0.25,
                    child: SizedBox(
                      width: 76.h,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(4.r),
                            child: Wrapper.setCachedNetworkImage(
                              imageUrl:
                                  'https://media.cnn.com/api/v1/images/stellar/prod/20240303-03-trump-biden-split-20240304120045189.jpg',
                              fit: BoxFit.fill,
                              width: 76.h,
                              height: 76.h,
                            ),
                          ),
                          SizedBox(height: 6.h),
                          Text(
                            'International',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: const Color(0xFF525252),
                              fontSize: 9.5.sp,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // News Headline section
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: 5,
              itemBuilder: (context, index) {
                return NewsCardWidget(
                  onNewsCardTap: () {
                    Get.to(() => const NewsDetailsScreen(),
                        transition: Transition.downToUp);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
