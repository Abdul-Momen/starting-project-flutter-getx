
import 'package:aladin/modules/home/controller/homepage_controller.dart';
import 'package:aladin/modules/onbording/controller/bannar_controller.dart';
import 'package:aladin/states/controller/InitalController.dart';
import 'package:get/get.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
     Get.lazyPut(() => InitialController());
     Get.lazyPut(() => HomePageController());

  }
}

class BannerBinding implements Bindings {
  @override
  void dependencies() {
     Get.lazyPut(() => BannerController());
  }
}

class HomeBinding implements Bindings {
  @override
  void dependencies() {
     Get.lazyPut(() => HomePageController());
  }
}
