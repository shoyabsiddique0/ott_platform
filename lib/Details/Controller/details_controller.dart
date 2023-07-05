import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:showcaseview/showcaseview.dart';

class DetailsController extends GetxController {
  final playKey = GlobalKey();
  final likeKey = GlobalKey();
  final addKey = GlobalKey();
  final shareKey = GlobalKey();
  final descKey = GlobalKey();
  final episodeKey = GlobalKey();

  @override
  void onReady() {
    // TODO: implement onReady
    ShowCaseWidget.of(Get.context!).startShowCase(
        [playKey, likeKey, addKey, shareKey, descKey, episodeKey]);
    super.onReady();
  }
}
