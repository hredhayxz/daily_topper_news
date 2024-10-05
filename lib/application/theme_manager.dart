import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemeManager {
  ThemeManager._();

  static ThemeData getAppTheme() {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.white,
      iconTheme: IconThemeData(
        color: const Color(0xFF3F3F3F),
        size: 20.r,
      ),
    );
  }
}
