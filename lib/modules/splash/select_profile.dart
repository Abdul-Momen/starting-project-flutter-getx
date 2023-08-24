import 'dart:async';
import 'package:aladin/constants/color.dart';
import 'package:aladin/constants/string.dart';
import 'package:aladin/helper/helper.dart';
import 'package:aladin/modules/auth/view/Login.dart';
import 'package:aladin/modules/home/view/screens/home_screen.dart';
import 'package:aladin/modules/onbording/view/componant.dart';
import 'package:aladin/modules/onbording/view/onbording_screen.dart';
import 'package:aladin/states/data/prefs.dart';
import 'package:aladin/widget/custom_btn.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SelectProfile extends StatefulWidget {
  static String routeName = '/selectprofile';

  const SelectProfile({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SelectProfile> {
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
      body: Column(children: <Widget>[
        addH(100.h),
        Center(
          child: Image.asset(
            'assets/images/splash_two.png',
            fit: BoxFit.cover,
            // height: double.infinity,
            // width: double.infinity,
            width: 250.w,
            height: 250.h,
            alignment: Alignment.center,
            repeat: ImageRepeat.noRepeat,
          ),
        ),
        Center(
          child: RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "Choose Your Role",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: ConstantStrings.kAppInterRegular,
                    color: ConstantColors.normalTextColor,
                    fontSize: 36.sp)),
          ])),
        ),
        addH(20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0xffE7EEFF),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              height: 150.h,
              width: 150.h,
              child: Center(
                child: Center(
                  child: Image.asset(
                    'assets/images/Teacher.png',
                    fit: BoxFit.cover,
                    // height: double.infinity,
                    // width: double.infinity,
                    width: 80.w,
                    height: 80.h,
                    alignment: Alignment.center,
                    repeat: ImageRepeat.noRepeat,
                  ),
                ),
              ),
            ),
            addW(20.w),
            Container(
              decoration: const BoxDecoration(
                color: Color(0xffE7EEFF),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              height: 150.h,
              width: 150.h,
              child: Center(
                child: Center(
                  child: Image.asset(
                    'assets/images/Student.png',
                    fit: BoxFit.cover,
                    // height: double.infinity,
                    // width: double.infinity,
                    width: 80.w,
                    height: 80.h,
                    alignment: Alignment.center,
                    repeat: ImageRepeat.noRepeat,
                  ),
                ),
              ),
            ),
          ],
        ),
        addH(20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0xffE7EEFF),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              height: 150.h,
              width: 150.h,
              child: Center(
                child: Center(
                  child: Image.asset(
                    'assets/images/School Bus.png',
                    fit: BoxFit.cover,
                    // height: double.infinity,
                    // width: double.infinity,
                    width: 80.w,
                    height: 80.h,
                    alignment: Alignment.center,
                    repeat: ImageRepeat.noRepeat,
                  ),
                ),
              ),
            ),
          ],
        ),
        addH(50.h),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: CustomBtn(
            btnColor: ConstantColors.blueDeap,
            btnTxt: 'Next',
            btnBorderColor: ConstantColors.blueDeap,
            btnSize: Size(
              double.infinity,
              60.h,
            ),
            onPressedFn: () {
               Get.toNamed(HomeScreen.routeName);
            },
          ),
        ),
      ]),
    );
  }
}
