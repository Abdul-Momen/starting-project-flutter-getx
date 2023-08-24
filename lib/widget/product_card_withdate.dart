import 'package:aladin/constants/color.dart';
import 'package:aladin/constants/string.dart';
import 'package:aladin/helper/helper.dart';
import 'package:aladin/widget/custom_elevated_button.dart';
import 'package:aladin/widget/skeleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ProductCardWithDate extends StatelessWidget {
  final String soldText;
  final String progressPersen;
  final double? progresswidth;
  final double? borderH;
  final double? borderW;
  final String productImg;
  final String winText;
  final String buySetfor;
  final String image;
  final double? width;
  final Widget? date;
  final double height;
  final Widget icon;
  final VoidCallback onClick;

  const ProductCardWithDate(
      {Key? key,
      required this.soldText,
      required this.progressPersen,
      required this.productImg,
      required this.winText,
      required this.buySetfor,
      required this.image,
      this.date,
      this.width,
      this.progresswidth,
      this.borderH,
      this.borderW,
      required this.height,
      required this.icon,
      required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(1.2, 3.3),
            blurRadius: 2,
            spreadRadius: 0.1,
          )
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.all(15.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  soldText,
                  style: TextStyle(
                      color: ConstantColors.grayBlack,
                      fontSize: 13.sp,
                      fontFamily: ConstantStrings.kAppInterRegular),
                ),
                LinearPercentIndicator(
                  width: progresswidth,
                  barRadius: Radius.circular(10),
                  animation: true,
                  lineHeight: 10.0.sp,
                  animationDuration: 2000,
                  percent: 0.9,
                  center: Text(progressPersen,
                      style: TextStyle(fontSize: 9, color: Colors.white)),
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  linearGradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [ConstantColors.red, ConstantColors.blueLight]),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 5.h),
              height: 220.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  productImg,
                ),
                fit: BoxFit.fill,
              )),
              child: Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: icon,
                  )),
            ),
            addH(9.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(3)),
                        height: 24.h,
                        width: 120.w,
                        child: Center(
                            child: Text(
                          "FINISHING FIRST!",
                          style: TextStyle(
                              fontFamily: ConstantStrings.kAppInterSemiBold,
                              fontSize: 13.sp,
                              color: Colors.white),
                        ))),
                    addH(7.h),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "WIN: ",
                            style: TextStyle(
                              color: Colors.pink,
                              fontFamily: ConstantStrings.kAppInterBold,
                              fontSize: 20.sp,
                            )),
                        TextSpan(
                            text: winText,
                            style: TextStyle(
                              color: ConstantColors.grayBlack,
                              fontFamily: ConstantStrings.kAppInterSemiBold,
                              fontSize: 20.sp,
                            )),
                      ]),
                    ),
                    addH(5),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Buy a Rosso Set for: ",
                            style: TextStyle(
                              color: ConstantColors.normalTextColor,
                              fontFamily: ConstantStrings.kAppInterRegular,
                              fontSize: 16.sp,
                            )),
                        TextSpan(
                            text: buySetfor,
                            style: TextStyle(
                              color: Colors.blue,
                              fontFamily: ConstantStrings.kAppInterBold,
                              fontSize: 16.sp,
                            )),
                      ]),
                    ),
                  ],
                ),
                Container(
                  height: borderH,
                  width: borderW,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: ConstantColors.grayShade, style: BorderStyle.solid),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset(image),
                  ),
                )
              ],
            ),
            addH(16.h),
            CustomElevatedButton(
              width: double.infinity,
              height: 46.w,
              onPressed: onClick,
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [ConstantColors.red, ConstantColors.blueLight]),
              borderRadius: BorderRadius.circular(5),
              child: Text(
                'Add to Cart',
                style: TextStyle(
                    fontFamily: ConstantStrings.kAppInterSemiBold,
                    fontSize: 16.sp),
              ),
            ),
            addH(16.h),
            SizedBox(
              height: 56.h,
              child: date,
            )
          ],
        ),
      ),
    );
  }
}

///Drow Date

class DrowDate extends StatelessWidget {
  final String date;
  final String campaignStatus;
  final String currentStatus;

  const DrowDate(
      {Key? key,
      required this.date,
      required this.campaignStatus,
      required this.currentStatus})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(
            Icons.event_available,
            color: Colors.green,
            size: 30.sp,
          ),
          addW(10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                date,
                style: TextStyle(
                  fontFamily: ConstantStrings.kAppInterMedium,
                  color: ConstantColors.grayBlack,
                  fontSize: 13.sp,
                ),
              ),
              addH(2.h),
              Row(
                children: [
                  Text(
                    campaignStatus,
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: ConstantColors.grayBlack,
                        fontFamily: ConstantStrings.kAppInterRegular,
                        fontSize: 12.sp),
                  ),
                  Text(
                    currentStatus,
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: ConstantColors.grayBlack,
                      fontSize: 12.sp,
                      fontFamily: ConstantStrings.kAppInterSemiBold,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
