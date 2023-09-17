import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sui/core.dart';

void main() async {
  await LocalDataService().load();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget mainView = const IntroView();
    if (LocalDataService().isFirstTime()) {
      mainView = const LoginView();
    }
    return MaterialApp(
      theme: getDefaultTheme(),
      debugShowCheckedModeBanner: false,
      navigatorKey: Get.navigatorKey,
      // home: SplashView(),
      home: kDebugMode ? mainView : SplashView(),
      // home: kDebugMode ? const IntroView() : SplashView(),
      // home: kReleaseMode ? const IntroView() : SplashView(),
    );
  }
}
