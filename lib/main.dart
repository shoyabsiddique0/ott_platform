import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ott_platform/Home/View/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ScreenUtilInit(builder: (context, child) {
    return GetMaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }));
}
