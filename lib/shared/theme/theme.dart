import 'package:flutter/material.dart';

ThemeData getDefaultTheme() {
  return ThemeData(
    appBarTheme: const AppBarTheme(
      centerTitle: true,
    ),
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.white,
  );
}
