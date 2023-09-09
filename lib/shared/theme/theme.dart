import 'package:flutter/material.dart';
import 'package:sui/shared/theme/theme_color.dart';

ThemeData getDefaultTheme() {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.white,
  );
}
