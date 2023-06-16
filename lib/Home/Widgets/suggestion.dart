import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Suggestion extends StatelessWidget {
  const Suggestion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            foregroundDecoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Colors.transparent,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: [0, 0.05],
              ),
            ),
            child: Image.asset("assets/HomeAssets/suggestionCard.png")),
        Positioned(
            bottom: ScreenUtil.defaultSize.height * 0.12,
            left: ScreenUtil.defaultSize.width * 0.07,
            child: SvgPicture.asset(
              "assets/HomeAssets/playIcon.svg",
              fit: BoxFit.fill,
            )),
        Positioned(
            bottom: ScreenUtil.defaultSize.height * 0.112,
            left: ScreenUtil.defaultSize.width * 0.14,
            child: Text(
              "Joker",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontSize: ScreenUtil.defaultSize.width * 0.06,
                  fontFamily: "Poppins"),
            ))
      ],
    );
  }
}
