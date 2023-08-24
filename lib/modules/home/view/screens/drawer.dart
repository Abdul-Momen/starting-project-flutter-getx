import 'package:aladin/constants/color.dart';
import 'package:aladin/constants/string.dart';

import 'package:aladin/modules/drawer/view/drawer_item.dart';
import 'package:aladin/modules/home/view/screens/home_screen.dart';
import 'package:aladin/modules/notification/view/notification_screen.dart';
import 'package:aladin/modules/profile/view/profile_screen.dart';
import 'package:aladin/widget/custom_back_title.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../helper/helper.dart';

class HomeDrawer extends StatefulWidget {
  final void Function(int) navigatingFn;
  final GlobalKey<ScaffoldState> scaffoldKey;

  const HomeDrawer({
    Key? key,
    //required this.userDetails,
    required this.navigatingFn,
    // required this.context,
    required this.scaffoldKey,
  }) : super(key: key);

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  @override
  Widget build(BuildContext context) {
    final List<String> menuTitle = [
      // section 1
      'Home',
      'Profile',
      'My Coupons',
      'Wishlist',
      'Campaigns',
      'Products',
      'Notifications',
      'How it Work',
      'Share this App',
      'Logout',
    ];

    return Drawer(
      width: 300.w,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: ConstantColors.lightRed,
          width: 1,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //Drawer Header
            Container(
              height: 248.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  'assets/images/drawer_bg.png',
                ),
                fit: BoxFit.fill,
              )),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [


                    addH(5),
                    //profile image
                    InkWell(
                      onTap: () {
                        Get.to(() => const ProfileScreen());
                      },
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50.0),
                            child: Image.asset(
                              'assets/images/drawer_bg.png',
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                          addW(7.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Hassan Alshamsi",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              addH(5.h),

                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 270.w,
                      height: 46.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white.withOpacity(0.3),
                          border: Border.all(
                              width: 2,
                              color: Colors.white.withOpacity(0.5),
                              strokeAlign: BorderSide.strokeAlignCenter)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.g_translate,
                                    size: 14, color: Colors.white),
                                addW(5.w),
                                const Text(
                                  "English",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const Icon(Icons.arrow_drop_down_outlined,
                                size: 20, color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            addH(10.h),
            Padding(
              padding: EdgeInsets.only(left: 18.w),
              child: Text(
                "Dashboard",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                    color: ConstantColors.grayBlack
                ),
              ),
            ),
            buildDivider(),
            DrawerItem(
              title: menuTitle[0],
              onTap: () {
                widget.scaffoldKey.currentState!.openEndDrawer();
              },
              iconData: Icons.home,
            ),
            DrawerItem(
              title: menuTitle[1],
              onTap: () {
                Get.to(() => const ProfileScreen());
              },
              iconData: Icons.person,
            ),
            DrawerItem(
              title: menuTitle[2],
              onTap: () => widget.navigatingFn(3),
              iconData: Icons.money,
            ),
            DrawerItem(
              title: menuTitle[3],
              onTap: () => widget.navigatingFn(1),
              iconData: Icons.favorite_border_outlined,
            ),
            DrawerItem(
              title: menuTitle[4],
              onTap: () {
              },
              iconData: Icons.campaign,
            ),
            DrawerItem(
              title: menuTitle[5],
              onTap: () {
              },
              iconData: Icons.production_quantity_limits_rounded,
            ),
            DrawerItem(
              title: menuTitle[6],
              onTap: () => Get.toNamed(NotificationScreen.routeName),
              iconData: Icons.notifications_none_outlined,
            ),
            DrawerItem(
              title: "Address Book",
              onTap: () {
              },
              iconData: Icons.edit_location_alt,
            ),
            DrawerItem(
              title: menuTitle[7],
              onTap: () {},
              iconData: Icons.workspaces_filled,
            ),
            DrawerItem(
              title: menuTitle[8],
              onTap: () {},
              iconData: Icons.share,
            ),
            addH(50.h),
            DrawerItem(
              title: "Logout",
              onTap: () {},
              iconData: Icons.login_outlined,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDivider() {
    return Divider(
      color: Colors.grey,
      thickness: 0.2,
      indent: 15.w,
      endIndent: 15.w,
    );
  }

  Widget footerImg(String svgImg, String url) {
    return Container(
      width: 30.w,
      height: 30.h,
      margin: EdgeInsets.only(right: 10.w, top: 15.h),
      child: InkWell(
        onTap: () {},
        child: Center(
          child: SvgPicture.asset(
            svgImg,
            height: 30.h,
            width: 30.w,
            allowDrawingOutsideViewBox: true,
          ),
        ),
      ),
    );
  }

  Widget buildMenuTitle({
    required String title,
  }) {
    return Padding(
      padding: EdgeInsets.only(left: 18.w),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          fontFamily: ConstantStrings.kAppInterBold,
        ),
      ),
    );
  }
}
