import 'dart:async';
import 'package:aladin/modules/auth/view/Login.dart';
import 'package:aladin/modules/home/view/screens/home_screen.dart';
import 'package:aladin/modules/onbording/view/onbording_screen.dart';
import 'package:aladin/modules/splash/splash_screen_two.dart';
import 'package:aladin/states/data/prefs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = '/splash';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      //go home page
      () {
        Get.offAndToNamed(SplashScreenTwo.routeName);

       /* print(Preference.getIsFristOnbordingFlag());
        if (Preference.getIsFristOnbordingFlag()) {
          if (Preference.getLoggedInFlag()) {
            Get.offAndToNamed(HomeScreen.routeName);
          } else {
            Get.offAndToNamed(LoginPage.routeName);
          }
        } else {
          print(Preference.getIsFristOnbordingFlag());
          Get.offAndToNamed(Onboard.routeName);
        }*/
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Image.asset(
                'assets/images/splash.png',
                fit: BoxFit.cover,
                // height: double.infinity,
                // width: double.infinity,
                width: 300,
                height: 300,
                alignment: Alignment.center,
                repeat: ImageRepeat.noRepeat,
              ),
            ),
          ]),
    );
  }
}
