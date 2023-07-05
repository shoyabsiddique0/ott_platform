import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var current = 0.obs;
  var collection1 = 0.obs;
  var collection2 = 0.obs;
  @override
  void onInit() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    super.onInit();
  }
}
