import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ott_platform/Home/View/home.dart';
import 'package:showcaseview/showcaseview.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ScreenUtilInit(builder: (context, child) {
    return ShowCaseWidget(
        enableAutoScroll: true,
        builder: Builder(
          builder: (context) =>
              GetMaterialApp(debugShowCheckedModeBanner: false, home: Home()),
        ));
  }));
}
