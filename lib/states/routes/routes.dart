import 'package:aladin/modules/auth/view/Login.dart';
import 'package:aladin/modules/auth/view/RegisterPage.dart';
import 'package:aladin/modules/home/view/screens/home_screen.dart';
import 'package:aladin/modules/notification/view/notification_screen.dart';
import 'package:aladin/modules/onbording/view/onbording_screen.dart';
import 'package:aladin/modules/splash/select_profile.dart';
import 'package:aladin/modules/splash/splash_screen.dart';
import 'package:aladin/modules/splash/select_language.dart';
import 'package:aladin/modules/splash/splash_screen_two.dart';
import 'package:aladin/modules/splash/tearms_and_condition.dart';
import 'package:get/route_manager.dart';
import '../bindings/bindings.dart';

class AllRoutes {
  static List<GetPage> allRoutes = [
    GetPage(
      name: SplashScreen.routeName,
      page: () => SplashScreen(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: HomeScreen.routeName,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),



    GetPage(
      name: NotificationScreen.routeName,
      page: () => const NotificationScreen(),
      binding: InitialBinding(),
    ),

    GetPage(
      name: Onboard.routeName,
      page: () => const Onboard(),
      binding: BannerBinding(),
    ),
    GetPage(
      name: LoginPage.routeName,
      page: () => const LoginPage(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: RegistrationPage.routeName,
      page: () => const RegistrationPage(),
      binding: InitialBinding(),
    ), GetPage(
      name: SplashScreenTwo.routeName,
      page: () => const SplashScreenTwo(),
      binding: InitialBinding(),
    ),GetPage(
      name: SplashScreenThree.routeName,
      page: () => const SplashScreenThree(),
      binding: InitialBinding(),
    ),GetPage(
      name: SelectProfile.routeName,
      page: () => const SelectProfile(),
      binding: InitialBinding(),
    ),GetPage(
      name: Terms_condition.routeName,
      page: () => const Terms_condition(),
      binding: InitialBinding(),
    ),
  ];
}
