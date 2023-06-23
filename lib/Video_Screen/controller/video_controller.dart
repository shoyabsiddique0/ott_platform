import 'package:flutter/services.dart';
import 'package:get/get.dart';

class VideoController extends GetxController {
  @override
  void onReady() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    // TODO: implement onReady
    super.onReady();
  }
}
