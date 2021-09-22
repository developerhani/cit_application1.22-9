import 'package:flutter/material.dart';
import 'package:flutter_day_1/home_page.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import 'package:splash_screen_view/splash_screen_view.dart';

class Splash extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Material(
      child: SplashScreenView(
        navigateRoute: Home(),
        duration: 6000,
        imageSize: 130,
        imageSrc: "assets/images/login.png",
        text: "Welcome",
        textType: TextType.TyperAnimatedText,

        textStyle: TextStyle(
          fontSize: 30.0,
        ),
        colors: [
          Colors.purple,
          Colors.blue,
          Colors.yellow,
          Colors.red,
        ],

      ),

    );
  }
}
