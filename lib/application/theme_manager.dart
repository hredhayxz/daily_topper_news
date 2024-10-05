import 'package:flutter/material.dart';

class ThemeManager {
  ThemeManager._();

  static ThemeData getAppTheme() {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.white,
    );
  }
}
