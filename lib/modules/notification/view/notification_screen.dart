import 'package:aladin/constants/color.dart';
import 'package:aladin/constants/string.dart';
import 'package:aladin/helper/helper.dart';
import 'package:aladin/widget/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class NotificationScreen extends StatelessWidget {
  static String routeName = "/notification";

  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: 75.h,
        title: "Notifications",
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                "Today",
                style: TextStyle(
                  color: ConstantColors.grayBlack,
                    fontSize: 20.sp, fontFamily: ConstantStrings.kAppInterBold),
              ),
            ),
            Divider(
              color: ConstantColors.grayShade,
              thickness: 0.2,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.w),
              child: ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Notice(
                      date: "Draw Date on: 22/06/2022",
                      time: "10 AM",
                      notifications:
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.");
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                "Yestaday",
                style: TextStyle(
                    color: ConstantColors.grayBlack,
                    fontSize: 20.sp, fontFamily: ConstantStrings.kAppInterBold),
              ),
            ),
            Divider(
              color: ConstantColors.grayShade,
              thickness: 0.2,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.w),
              child: ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Notice(
                      date: "Draw Date on: 22/06/2022",
                      time: "10 AM",
                      notifications:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Notice extends StatelessWidget {
  final String date;
  final String time;
  final String notifications;
  const Notice(
      {Key? key,
      required this.date,
      required this.time,
      required this.notifications})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            date,
            style: TextStyle(

                fontSize: 16.sp,
                color: ConstantColors.grayBlack,
                fontFamily: ConstantStrings.kAppInterMedium),
          ),
          trailing: InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.only(bottom: 42.h),
              width: 70.w,
              child: Row(
                children: [
                  Icon(
                    Icons.restart_alt,
                    size: 20.r,
                    color: ConstantColors.normalTextColor
                  ),
                  addW(5.w),
                  Text(
                    time,

                    style: TextStyle(color: ConstantColors.normalTextColor,fontFamily: ConstantStrings.kAppInterMedium),
                  )
                ],
              ),
            ),
          ),
          subtitle: Text(
            notifications,
            style: TextStyle(height: 1.4.h,color: ConstantColors.normalTextColor,fontFamily: ConstantStrings.kAppInterMedium),
          ),
        ),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.w),
          child: Divider(
            color: ConstantColors.grayShade,
            thickness: 0.2,
          ),
        ),
      ],
    );
  }
}
