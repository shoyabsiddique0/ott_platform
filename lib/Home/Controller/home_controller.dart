import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:showcaseview/showcaseview.dart';

class HomeController extends GetxController {
  var current = 0.obs;
  var collection1 = 0.obs;
  var collection2 = 0.obs;
  final suggestionKey = GlobalKey();
  final recentKey = GlobalKey();
  final trendingKey = GlobalKey();
  final collectionKey = GlobalKey();
  @override
  void onInit() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    ShowCaseWidget.of(Get.context!)
        .startShowCase([suggestionKey, recentKey, trendingKey, collectionKey]);
    super.onReady();
  }
}
