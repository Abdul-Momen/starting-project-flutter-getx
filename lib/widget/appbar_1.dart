import 'package:aladin/constants/string.dart';
import 'package:aladin/helper/helper.dart';
import 'package:aladin/modules/profile/view/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Appbar1 extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const Appbar1({
    Key? key,
    required this.scaffoldKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => scaffoldKey.currentState!.openDrawer(),
              child: Row(
                children: [
                  Icon(Icons.menu,color: Colors.white,),
                ],
              ),
            ),
            SizedBox(
              height: 35.h,
              width: 48.w,
              child: Image.asset(
                'assets/images/app_icon.png',
                scale: 2,
                fit: BoxFit.fill,
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(() => const ProfileScreen());
              },
              child: SizedBox(
                height: 40.h,
                width: 40.w,
                child: Image.asset(
                  'assets/images/profile_icon.png',
                  scale: 2,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
