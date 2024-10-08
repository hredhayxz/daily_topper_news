import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemeManager {
  ThemeManager._();

  static ThemeData getAppTheme() {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 20.sp,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        ),
      ),
      iconTheme: IconThemeData(
        color: const Color(0xFF3F3F3F),
        size: 20.r,
      ),
    );
  }
}
