import 'package:aladin/constants/color.dart';
import 'package:aladin/constants/string.dart';
import 'package:aladin/helper/helper.dart';

import 'package:aladin/modules/profile/view/edit_profile_page.dart';
import 'package:aladin/widget/border_gradian_color.dart';
import 'package:aladin/widget/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  final String routeName = "/ProfileScreen";

  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(height: 75.h, title: "Profile"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              "My Profile",
              style: TextStyle(
                  fontSize: 20.sp,
                  fontFamily: ConstantStrings.kAppInterBold,
                  color: ConstantColors.grayBlack),
            ),
            trailing: SizedBox(
              height: 32.h,
              width: 140.w,
              child: BorderGradianColorButton(
                thickness: 0.5,
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
                ),
                onPressed: () {
                  Get.to(()=>EditProfilePage());
                },
                gradient: const LinearGradient(colors: [
                  Colors.pink,
                  Colors.indigo,
                ]),
                child: Row(
                  children: [
                    Icon(
                      Icons.mode_edit_outline_outlined,
                      size: 18.sp,
                      color: Colors.black,
                    ),
                    addW(10),
                    Text(
                      "Edit Profile",
                      style: TextStyle(
                          fontFamily: ConstantStrings.kAppInterMedium,
                          color: ConstantColors.grayBlack),
                    ),
                  ],
                ),
              ),
            ),
          ),
           Divider(
            color: ConstantColors.grayShade,
            thickness: 0.2,
          ),
          addH(8),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: const Column(
              children: [
                ProfileInfo(
                  title: "Full Name",
                  infoText: "Sherif Rahman",
                ),
                Divide(thickness: 0.2),
                ProfileInfo(title: "Email", infoText: "test@royex.bet"),
                Divide(thickness: 0.2),
                ProfileInfo(
                    title: "Mobile Number", infoText: "+966 01-2050876"),
                Divide(thickness: 0.2),
                ProfileInfo(title: "Language", infoText: "English"),
                Divide(thickness: 0.2),
                ProfileInfo(title: "Password", infoText: "**********"),
                Divide(thickness: 0.2),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Address Book",
              style: TextStyle(
                  color: ConstantColors.grayBlack,
                  fontFamily: ConstantStrings.kAppInterBold, fontSize: 18.sp),
            ),
          ),

        ],
      ),
    );
  }
}

class ProfileInfo extends StatelessWidget {
  final String title;
  final String infoText;

  const ProfileInfo({super.key, required this.title, required this.infoText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              color: ConstantColors.grayBlack,
              fontFamily: ConstantStrings.kAppInterRegular, fontSize: 16.sp),
        ),
        Text(
          infoText,
          style: TextStyle(
              color: ConstantColors.grayBlack,
              fontFamily: ConstantStrings.kAppInterBold, fontSize: 16.sp),
        ),
      ],
    );
  }
}

class Divide extends StatelessWidget {
  final double thickness;

  const Divide({
    super.key,
    required this.thickness,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 25.h,
      color: ConstantColors.grayShade,
      thickness: thickness,
    );
  }
}
