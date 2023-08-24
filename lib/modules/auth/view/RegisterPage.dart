import 'package:aladin/constants/string.dart';
import 'package:aladin/helper/helper.dart';
import 'package:aladin/modules/auth/view/Login.dart';
import 'package:aladin/modules/home/view/screens/home_screen.dart';
import 'package:aladin/modules/onbording/view/componant.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../constants/color.dart';

class RegistrationPage extends StatefulWidget {
  static String routeName = "/registration";

  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  bool hidePassword = true;
  bool rememberMe = false;
  String selectLang = 'Language';
  var lItems = ['language', 'English', 'Bangla'];
  String dropdownvalue = 'Country';
  String dropdownvaluelan = 'Language';

  var items = [
    'Country',
    'Bangladesh',
    'India',
    'China',
    'Arob',
    'Singapur',
    'USA'
  ];

  var lanItems = [
    'Language',
    'English',
    'Bangla',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.width / 2.00,
              width: MediaQuery.of(context).size.width,
              child: new Image.asset(
                'assets/images/sc2.png',
                fit: BoxFit.fill,
                // height: double.infinity,
                // width: double.infinity,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                alignment: Alignment.center,
                repeat: ImageRepeat.noRepeat,
              ),
            ),
            addH(10.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello!",
                      style: TextStyle(
                          color: ConstantColors.grayBlack,
                          fontSize: 16.sp,
                          fontFamily: ConstantStrings.kAppInterSemiBold),
                    ),
                    addH(5),
                    Text(
                      "Signup to Get Started",
                      style: TextStyle(
                          color: ConstantColors.grayBlack,
                          fontSize: 20.sp,
                          fontFamily: ConstantStrings.kAppInterSemiBold),
                    ),
                  ],
                ),
              ),
            ),
            addH(20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    onChanged: (value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                      hintText: 'Full Name',
                      hintStyle: TextStyle(
                          color: ConstantColors.normalTextColor,
                          fontFamily: ConstantStrings.kAppInterRegular),
                      prefixIcon: Icon(Icons.account_circle_outlined,
                          color: ConstantColors.normalTextColor),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            6), //circular border for TextField.
                      ),
                    ),
                  ),
                ],
              ),
            ),
            addH(10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
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
                          color: ConstantColors.normalTextColor,
                          fontFamily: ConstantStrings.kAppInterRegular),
                      prefixIcon: Icon(Icons.email_outlined,
                          color: ConstantColors.normalTextColor),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            6), //circular border for TextField.
                      ),
                    ),
                  ),
                ],
              ),
            ),
            addH(10.h),
            /*Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
              child: Container(
                height: 60.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                      color: Colors.grey,
                      style: BorderStyle.solid,
                      width: 0.80),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Icon(Icons.g_translate_outlined),
                    ),
                    DropdownButtonHideUnderline(
                      child: DropdownButton(
                        elevation: 0,
                        value: selectLang,
                        icon: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10),
                          child: Icon(Icons.keyboard_arrow_down),
                        ),
                        items: lItems.map((String lItems) {
                          return DropdownMenuItem(
                              value: lItems,
                              child: Text(
                                lItems,
                                style: TextStyle(
                                    fontFamily: ConstantStrings
                                        .kAppInterRegular),
                              ));
                        }).toList(),
                        onChanged: (String? newLValue) {
                          setState(() {
                            selectLang = newLValue!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),*/
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 60.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 0.80),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Icon(
                              Icons.pin_drop_outlined,
                              color: ConstantColors.normalTextColor,
                            ),
                          ),
                          Expanded(
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                elevation: 0,
                                value: dropdownvalue,
                                icon: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Icon(Icons.keyboard_arrow_down),
                                ),
                                items: items.map((String items) {
                                  return DropdownMenuItem(
                                      value: items,
                                      child: Text(
                                        items,
                                        style: TextStyle(
                                            color:
                                                ConstantColors.normalTextColor,
                                            fontFamily: ConstantStrings
                                                .kAppInterRegular),
                                      ));
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownvalue = newValue!;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  addW(8.w),
                  Expanded(
                    child: Container(
                      height: 60.h,
                      child: TextField(
                        onChanged: (value) {
                          print(value);
                        },
                        decoration: InputDecoration(
                          hintText: 'City',
                          hintStyle: TextStyle(
                              color: ConstantColors.normalTextColor,
                              fontFamily: ConstantStrings.kAppInterRegular),
                          prefixIcon: Icon(Icons.pin_drop_outlined,
                              color: ConstantColors.normalTextColor),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                6), //circular border for TextField.
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            addH(10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
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
                      hintStyle: TextStyle(
                          color: ConstantColors.normalTextColor,
                          fontFamily: ConstantStrings.kAppInterRegular),
                      prefixIcon: Icon(Icons.lock_outline,
                          color: ConstantColors.normalTextColor),
                      suffixIcon: IconButton(
                        icon: hidePassword
                            ? Icon(Icons.visibility_off_outlined,
                                color: ConstantColors.normalTextColor)
                            : Icon(Icons.visibility_outlined,
                                color: ConstantColors.normalTextColor),
                        onPressed: () {
                          setState(() {
                            hidePassword = !hidePassword;
                          });
                        },
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            6), //circular border for TextField.
                      ),
                    ),
                  ),
                ],
              ),
            ),
            addH(10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    onChanged: (value) {
                      print(value);
                    },
                    obscureText: hidePassword, //show/hide password
                    decoration: InputDecoration(
                      hintText: 'Retype Password',
                      hintStyle: TextStyle(
                          color: ConstantColors.normalTextColor,
                          fontFamily: ConstantStrings.kAppInterRegular),
                      prefixIcon: Icon(Icons.lock_outline,
                          color: ConstantColors.normalTextColor),
                      suffixIcon: IconButton(
                        icon: hidePassword
                            ? Icon(Icons.visibility_off_outlined,
                                color: ConstantColors.normalTextColor)
                            : Icon(Icons.visibility_outlined,
                                color: ConstantColors.normalTextColor),
                        onPressed: () {
                          setState(() {
                            hidePassword = !hidePassword;
                          });
                        },
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            6), //circular border for TextField.
                      ),
                    ),
                  ),
                ],
              ),
            ),
            addH(10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    onChanged: (value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                      hintText: 'Phone Number',
                      hintStyle: TextStyle(
                          color: ConstantColors.normalTextColor,
                          fontFamily: ConstantStrings.kAppInterRegular),
                      prefixIcon: Icon(Icons.call,
                          color: ConstantColors.normalTextColor),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            6), //circular border for TextField.
                      ),
                    ),
                  ),
                ],
              ),
            ),
            addH(10.h),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                child: Container(
                  height: 60.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                        color: Colors.grey,
                        style: BorderStyle.solid,
                        width: 0.80),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Icon(
                          Icons.g_translate,
                          color: ConstantColors.normalTextColor,
                        ),
                      ),
                      Expanded(
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            elevation: 0,
                            value: dropdownvaluelan,
                            icon: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Icon(Icons.keyboard_arrow_down),
                            ),
                            items: lanItems.map((String items) {
                              return DropdownMenuItem(
                                  value: items,
                                  child: Text(
                                    items,
                                    style: TextStyle(
                                        color: ConstantColors.normalTextColor,
                                        fontFamily:
                                            ConstantStrings.kAppInterRegular),
                                  ));
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownvaluelan = newValue!;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            addH(10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: CheckboxListTile(
                    title: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "By signing up you agree to our ",
                          style: TextStyle(
                              fontFamily: ConstantStrings.kAppInterRegular,
                              color: ConstantColors.normalTextColor)),
                      TextSpan(
                          text:
                              "User Agreement, Privacy Policy and Draw Terms & Conditions",
                          style: TextStyle(
                              fontFamily: ConstantStrings.kAppInterBold,
                              color: ConstantColors.normalTextColor))
                    ])),
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
              ],
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              width: double.infinity,
              height: 55.0.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  ConstantColors.red,
                  ConstantColors.blueLight,
                ]),
                borderRadius: BorderRadius.circular(5),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed(LoginPage.routeName);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
                child: Text(
                  'Register',
                  style: TextStyle(
                      color: ConstantColors.white,
                      fontFamily: ConstantStrings.kAppInterSemiBold,
                      fontSize: 18.sp),
                ),
              ),
            ),
            addH(20.0),
            Text("Or Continue With",
                style: TextStyle(
                    color: ConstantColors.normalTextColor,
                    fontFamily: ConstantStrings.kAppInterRegular)),
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
                      widget: SvgPicture.asset('assets/svg/facebook.svg'),
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
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "Have an Account? ",
                  style: TextStyle(
                      fontFamily: ConstantStrings.kAppInterRegular,
                      color: ConstantColors.normalTextColor)),
              TextSpan(
                  text: "Login",
                  style: TextStyle(
                      fontFamily: ConstantStrings.kAppInterBold,
                      decoration: TextDecoration.underline,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => Get.to(() => LoginPage()))
            ])),
            addH(20),
          ],
        ),
      ),
    );
  }
}
