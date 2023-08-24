import 'dart:async';
import 'package:aladin/constants/color.dart';
import 'package:aladin/constants/string.dart';
import 'package:aladin/helper/helper.dart';
import 'package:aladin/modules/auth/view/Login.dart';
import 'package:aladin/modules/home/view/screens/home_screen.dart';
import 'package:aladin/modules/onbording/view/componant.dart';
import 'package:aladin/modules/onbording/view/onbording_screen.dart';
import 'package:aladin/modules/splash/select_language.dart';
import 'package:aladin/modules/splash/tearms_and_condition.dart';
import 'package:aladin/states/data/prefs.dart';
import 'package:aladin/widget/custom_btn.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SplashScreenTwo extends StatefulWidget {
  static String routeName = '/splashTwo';

  const SplashScreenTwo({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreenTwo> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      //go home page
      () {
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
                'assets/images/splash_two.png',
                fit: BoxFit.cover,
                // height: double.infinity,
                // width: double.infinity,
                width: 300,
                height: 300,
                alignment: Alignment.center,
                repeat: ImageRepeat.noRepeat,
              ),
            ),
            addH(100.h),
            Center(
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "     Welcome To \nLearning",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: ConstantStrings.kAppInterRegular,
                        color: ConstantColors.normalTextColor,
                        fontSize: 36.sp)),
                TextSpan(
                    text: " Campus",
                    style: TextStyle(
                        fontFamily: ConstantStrings.kAppInterBold,
                        color: Colors.deepOrangeAccent,
                        fontWeight: FontWeight.w500,
                        fontSize: 36.sp),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        //Get.to(() => RegistrationPage());
                      })
              ])),
            ),
            addH(100.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: CustomBtn(
                btnColor: ConstantColors.blueDeap,
                btnTxt: 'Get Started',
                btnBorderColor: ConstantColors.blueDeap,
                btnSize: Size(
                  double.infinity,
                  60.h,
                ),
                onPressedFn: () {
                  Get.toNamed(SplashScreenThree.routeName);
                },
              ),
            ),
          ]),
    );
  }
}
