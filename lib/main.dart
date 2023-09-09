import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sui/core.dart';
import 'package:sui/shared/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getDefaultTheme(),
      debugShowCheckedModeBanner: false,
      // home: SplashView(),
      home: kDebugMode ? const IntroView() : SplashView(),
      // home: kReleaseMode ? const IntroView() : SplashView(),
    );
  }
}
