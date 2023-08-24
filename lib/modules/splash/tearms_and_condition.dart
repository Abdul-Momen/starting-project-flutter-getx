import 'dart:async';
import 'package:aladin/constants/color.dart';
import 'package:aladin/constants/string.dart';
import 'package:aladin/helper/helper.dart';
import 'package:aladin/modules/auth/view/Login.dart';
import 'package:aladin/modules/home/view/screens/home_screen.dart';
import 'package:aladin/modules/onbording/view/componant.dart';
import 'package:aladin/modules/onbording/view/onbording_screen.dart';
import 'package:aladin/modules/splash/select_profile.dart';
import 'package:aladin/modules/splash/select_language.dart';
import 'package:aladin/states/data/prefs.dart';
import 'package:aladin/widget/custom_btn.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Terms_condition extends StatefulWidget {
  static String routeName = '/termsCondition';

  const Terms_condition({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Terms_condition> {
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
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.0),
          child: Center(
            child: Image.asset(
              'assets/images/Rules & Resolations.png',
              fit: BoxFit.fill,
              // height: double.infinity,
              // width: double.infinity,
              width: double.infinity,
              height: 212.h,
              alignment: Alignment.center,
              repeat: ImageRepeat.noRepeat,
            ),
          ),
        ),
        addH(50.h),
        Center(
          child: RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "Terms & Condition",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: ConstantStrings.kAppInterRegular,
                    color: ConstantColors.normalTextColor,
                    fontSize: 36.sp)),
          ])),
        ),
        addH(50.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          child: Text(
              'Lorem ipsum dolor sit amet consectetur. Vestibulum turpis vulputate augue viverra sed mi vel. Porta etiam a vitae quam mattis commodo ut. Elit viverra viverra iaculis faucibus sapien sit bibendum. Quam fringilla at lectus in consectetur accumsan scelerisque. Nec morbi vitae quis eget at odio. Viverra venenatis est imperdiet egestas nulla lorem pellentesque senectus mauris. Lacus sem est amet morbi vel urna placerat dictum. Elementum eget aenean in venenatis non tristique ',style: TextStyle(
              fontSize: 18.sp,
          ),),
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
              Get.toNamed(SelectProfile.routeName);
            },
          ),
        ),
      ]),
    );
  }
}
