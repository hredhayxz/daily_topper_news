import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class NewsDetailsScreen extends StatelessWidget {
  const NewsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/f/f8/10.Bangladesh_quota_reform_movement_2024.jpg',
                ),
                fit: BoxFit.contain,
                alignment: Alignment.topCenter,
              ),
            ),
            child: Container(
              padding: EdgeInsets.all(24.r),
              color: Colors.black54,
              child: Text(
                'Bangladesh protests updates: Sheikh Hasina quits, interim gov\'t taking over',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Positioned(
            top: 200.h,
            child: Container(
              width: Get.width,
              padding: EdgeInsets.all(16.r),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16.r),
                    topRight: Radius.circular(16.r)),
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Posted by ',
                            style: TextStyle(
                              color: const Color(0x993C3C43),
                              fontSize: 12.sp,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: 'Mahir',
                            style: TextStyle(
                              color: const Color(0x993C3C43),
                              fontSize: 12.sp,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text: ' at July 23,2024; 09:00 PM',
                            style: TextStyle(
                              color: const Color(0x993C3C43),
                              fontSize: 12.sp,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'Bangladesh’s Prime Minister Sheikh Hasina has resigned and fled the country following weeks of deadly demonstrations against her government. The removal of Hasina on Monday followed weeks of deadly protests and appears to have averted the threat of further bloodshed. The focus now moves to who will control the South Asian country.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.sp,
                      fontFamily: 'Noto Serif Bengali',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Source: Prothom Alo, July 23, 2024',
                      style: TextStyle(
                        color: const Color(0x4C3C3C43),
                        fontSize: 12.sp,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  SizedBox(height: 32.h),
                ],
              ),
            ),
          ),
          Positioned(
            top: 185.h,
            right: 16.w,
            child: Container(
              padding: EdgeInsets.all(8.r),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1.w, color: const Color(0xFFC6C6C8)),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: Text(
                'Daily Topper',
                style: TextStyle(
                  color: const Color(0x993C3C43),
                  fontSize: 12.sp,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Positioned(
            top: 550.h,
            left: 4.w,
            right: 4.w,
            child: InkWell(
              onTap: () {},
              child: Container(
                width: Get.width,
                padding: EdgeInsets.symmetric(horizontal: 16.r, vertical: 20.r),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.75),
                  borderRadius: BorderRadius.circular(8.r), // Border radius
                  image: const DecorationImage(
                    opacity: 0.3,
                    image: NetworkImage(
                      'https://uploads.dailydot.com/2024/08/yusuf-dikec-air-pistol-olympics.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Paris Olympiad 2024',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.sp,
                            fontFamily: 'Tiro Bangla',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 2.h),
                        Text(
                          'Related News',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20.w),
                    Container(
                      padding: EdgeInsets.all(8.r),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.white.withOpacity(0.25),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.white,
                        size: 24.r,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
