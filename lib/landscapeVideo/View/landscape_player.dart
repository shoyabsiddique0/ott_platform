import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ott_platform/landscapeVideo/controller/landscape_controller.dart';
import 'package:ott_platform/landscapeVideo/widgets/landscape_video.dart';

// ignore: must_be_immutable
class LandscapePlayer extends StatelessWidget {
  LandscapePlayer({Key? key}) : super(key: key);
  LandscapeController controller = Get.put(LandscapeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LandscapeVideo(),
    );
  }
}
