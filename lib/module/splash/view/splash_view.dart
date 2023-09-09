import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sui/core.dart';
import '../controller/splash_controller.dart';

class SplashView extends StatefulWidget {
  SplashView({Key? key}) : super(key: key);

  Widget build(context, SplashController controller) {
    controller.view = this;

    return Scaffold(
      // Hotkey "Center" = ctrl+shift+alt+C
      body: Center(
        // image_asset
        child: Image.asset(
          "assets/icon/icon.png",
          width: 120.0,
          height: 120.0,
          fit: BoxFit.fill,
        ).animate().fadeIn(
              duration: 2000.ms,
            ),
      ),
    );
  }

  @override
  State<SplashView> createState() => SplashController();
}
