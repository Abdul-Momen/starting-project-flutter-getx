import 'package:aladin/constants/string.dart';
import 'package:aladin/modules/home/controller/homepage_controller.dart';
import 'package:aladin/modules/home/view/screens/dashboard.dart';
import 'package:aladin/modules/home/view/screens/drawer.dart';
import 'package:aladin/modules/profile/view/profile_screen.dart';
import 'package:aladin/widget/appbar_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/homeScreen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedPage = 0;

  HomePageController homePageController = Get.find<HomePageController>();

  @override
  void initState() {
    List<String> args = Get.arguments ?? [];
    if (args.isNotEmpty) {
      _selectedPage = int.parse(args[0]);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: HomeDrawer(
        scaffoldKey: _scaffoldKey,
        navigatingFn: (value) {
          _scaffoldKey.currentState!.closeDrawer();
          setState(
            () => _selectedPage = value,
          );
          /* if (value != 5) {
          }*/
        },
      ),
      body: getBodyView(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _selectedPage = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedPage,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black45,
        selectedLabelStyle: TextStyle(
            fontSize: 12.sp,
            color: Colors.black,
            fontFamily: ConstantStrings.kAppInterSemiBold),
        elevation: 10,
        items: [
          BottomNavigationBarItem(
            icon: _selectedPage == 0
                ? const Icon(Icons.home, size: 27)
                : const Icon(
                    Icons.home_outlined,
                    size: 20,
                  ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: _selectedPage == 1
                  ? const Icon(Icons.chat_bubble_outline_outlined, size: 27)
                  : const Icon(
                      Icons.chat_bubble,
                      size: 20,
                    ),
              label: "Chat"),
          BottomNavigationBarItem(
              icon: _selectedPage == 2
                  ? const Icon(
                      Icons.notification_important,
                      size: 20,
                    )
                  : const Icon(
                      Icons.notifications,
                      size: 20,
                    ),
              label: "Notice"),
          BottomNavigationBarItem(
            icon: _selectedPage == 3
                ? const Icon(Icons.person, size: 27)
                : const Icon(
                    Icons.person,
                    size: 20,
                  ),
            label: "Profile",
          ),
        ],
      ),
    );
  }

  Widget getBodyView() {
    switch (_selectedPage) {
      case 0:
/*        return HomePage(
          scaffoldKey: _scaffoldKey,
          homePageController: homePageController,
        );*/
        return const DashBoard();

      case 1:
        return const DashBoard();
      case 2:
        return const DashBoard();
      case 3:
        return const ProfileScreen();

      default:
        return const Center(
          child: Text(
            "Something wrong",
          ),
        );
    }
  }
}
