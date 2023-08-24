import 'package:aladin/constants/color.dart';
import 'package:aladin/constants/string.dart';
import 'package:aladin/helper/helper.dart';
import 'package:aladin/modules/auth/view/RegisterPage.dart';
import 'package:aladin/modules/home/view/screens/home_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../onbording/view/componant.dart';

class LoginPage extends StatefulWidget {
  static String routeName = "/login";

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool hidePassword = true;
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 270.h,
            width: MediaQuery.of(context).size.width,
            child: new Image.asset(
              'assets/images/sc3.png',
              fit: BoxFit.fill,
              // height: double.infinity,
              // width: double.infinity,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              alignment: Alignment.center,
              repeat: ImageRepeat.noRepeat,
            ),
          ),

          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10.0.w),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.only(left: 10.0, top: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello Again!",
                          style: new TextStyle(
                              fontSize: 16.sp,
                              color: ConstantColors.grayBlack,
                              fontFamily: ConstantStrings.kAppInterSemiBold),
                        ),
                        Text(
                          "Welcome Back",
                          style: new TextStyle(
                            fontSize: 24.sp,
                            color: ConstantColors.grayBlack,
                            fontFamily: ConstantStrings.kAppInterSemiBold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                addH(20.h),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        onChanged: (value) {
                          print(value);
                        },
                        decoration: InputDecoration(

                          hintText: 'Email',
                          hintStyle: TextStyle(
                            fontFamily: ConstantStrings.kAppInterRegular,
                            color: ConstantColors.normalTextColor
                          ),
                          prefixIcon: Icon(Icons.email_outlined),
                          border: OutlineInputBorder(
                              borderSide:  BorderSide(color: ConstantColors.grayShade),
                            borderRadius: BorderRadius.circular(
                                6), //circular border for TextField.
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        onChanged: (value) {
                          print(value);
                        },
                        obscureText: hidePassword, //show/hide password
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle:
                          TextStyle(fontFamily: ConstantStrings.kAppInterRegular,color: ConstantColors.normalTextColor),
                          prefixIcon: Icon(Icons.lock_outline),
                          suffixIcon: IconButton(
                            icon: hidePassword
                                ? Icon(Icons.visibility_off)
                                : Icon(Icons.visibility),
                            onPressed: () {
                              setState(() {
                                hidePassword = !hidePassword;
                              });
                            },
                          ),
                          border: OutlineInputBorder(
                            borderSide:  BorderSide(color: ConstantColors.grayShade),
                            borderRadius: BorderRadius.circular(
                                6), //circular border for TextField.
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      child: CheckboxListTile(
                        title: Text(
                          "Remember",
                          style: TextStyle(
                              color: ConstantColors.normalTextColor,
                              fontFamily: ConstantStrings.kAppInterRegular,
                              fontSize: 14.sp
                          ),
                        ),
                        value: rememberMe,
                        onChanged: (newValue) {
                          setState(() {
                            rememberMe = newValue!;
                          });
                        },
                        controlAffinity: ListTileControlAffinity
                            .leading, //  <-- leading Checkbox
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10.0.h),
                      child: Text(
                        "Forgot password?",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: ConstantColors.normalTextColor,
                          fontFamily:
                          ConstantStrings.kAppInterRegular,
                          fontSize: 14.sp,
                        ), // has impact
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  width: double.infinity,
                  height: 55.0.h,
                  decoration: BoxDecoration(
                    gradient:  LinearGradient(colors: [
                      ConstantColors.red,
                      ConstantColors.blueLight,
                    ]),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed(HomeScreen.routeName);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      shadowColor: Colors.transparent,
                    ),
                    child: Text(
                      'Log in',
                      style: TextStyle(

                          fontFamily: ConstantStrings.kAppInterSemiBold,
                          fontSize: 18.sp),
                    ),
                  ),
                ),
                addH(20.0),
                Text(
                  "Or Continue With",
                  style: TextStyle(color: ConstantColors.normalTextColor,fontFamily: ConstantStrings.kAppInterRegular),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                          widget: SvgPicture.asset('assets/svg/google.svg'),
                          onPressed: () {},
                          buttonStyle: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              foregroundColor: Colors.black,
                              elevation: 0,
                              side: const BorderSide(
                                width: 1.0,
                                color: Colors.black38,
                              )),
                          width: 60,
                          height: 60),
                      addW(20),
                      CustomButton(
                          widget: SvgPicture.asset('assets/svg/ios.svg'),
                          onPressed: () {},
                          buttonStyle: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              foregroundColor: Colors.black,
                              elevation: 0,
                              side: const BorderSide(
                                width: 1.0,
                                color: Colors.black38,
                              )),
                          width: 60,
                          height: 60),
                      addW(20),
                      CustomButton(
                          widget:SvgPicture.asset('assets/svg/facebook.svg'),
                          onPressed: () {},
                          buttonStyle: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              foregroundColor: Colors.black,
                              elevation: 0,
                              side: const BorderSide(
                                width: 1.0,
                                color: Colors.black38,
                              )),
                          width: 60,
                          height: 60)
                    ],
                  ),
                ),
                addH(50.h),
                RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Don't Have an Account? ",
                          style: TextStyle(
                              fontFamily: ConstantStrings.kAppInterRegular,
                              color: ConstantColors.normalTextColor)),
                      TextSpan(
                          text: "Register",
                          style: TextStyle(
                              fontFamily: ConstantStrings.kAppInterBold,
                              decoration: TextDecoration.underline,
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.to(() => RegistrationPage()))
                    ])),
                addH(20),
              ],
            ),
          )

        ],
      ),
    ));
  }
}
