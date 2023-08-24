import 'package:aladin/constants/string.dart';
import 'package:aladin/helper/helper.dart';
import 'package:aladin/modules/home/model/closing_soon_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ClosingSoonItem extends StatelessWidget {
  final Campaign campaign;

  const ClosingSoonItem({
    Key? key,
    required this.campaign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
        top: 5,
        right: 8,
        left: 1,
      ),
      child: Container(
        padding: EdgeInsets.only(right: 10.w),
        height: 172.h,
        width: 122.w,
        decoration: BoxDecoration(
          boxShadow:  [
            BoxShadow(
              color: Colors.grey.shade200,
              offset: Offset(2.5, 3.7),
              blurRadius: 2,
              spreadRadius: 1,
            )
          ],
          borderRadius: BorderRadius.circular(10.h),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Image.network(
                  //   campaign.productImage,
                    'https://primo.sharafdg.com/assets/0/9/0/8/0908854d92b27723b4e9f79e52502bf8810bbfbe_726cf92695204db2a5556b308dfaa76e.jpg',
                    fit: BoxFit.fill,
                    // height: double.infinity,
                    // width: double.infinity,
                    width: 80.w,
                    height: 80.h,
                    alignment: Alignment.center,
                    repeat: ImageRepeat.noRepeat,
                  ),
                )),
            Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    addH(1),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Get Chance to ",
                          style: TextStyle(
                            fontFamily: ConstantStrings.kAppInterRegular,
                            color: Colors.black,
                            fontSize: 11.sp,
                          )),
                      TextSpan(
                          text: "Win",
                          style: TextStyle(
                            color: Colors.red,
                            fontFamily: ConstantStrings.kAppInterBold,
                            fontSize: 11.sp,
                          ))
                    ])),
                    Text(campaign.productName,
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black,
                          fontFamily: ConstantStrings.kAppInterSemiBold,)),
                    Text("${campaign.soldQty.toString()} Sold out of ${campaign.productLimit.toString()}",
                        style:
                            TextStyle(color: Colors.black,
                                fontFamily: ConstantStrings.kAppInterRegular,
                                fontSize: 11.sp)),
                    LinearPercentIndicator(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      width:  112.w,
                      barRadius: const Radius.circular(10),
                      animation: true,
                      lineHeight: 7.h,
                      animationDuration: 2000,
                      percent: 0.5, //campaign.soldQty.toDouble(),
                     /* center: Text(campaign.soldQty.toString(),
                          style: TextStyle(fontSize: 9, color: Colors.white)),*/
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      linearGradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.pink, Colors.blueAccent]),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
