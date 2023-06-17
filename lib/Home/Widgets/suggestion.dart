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
            bottom: ScreenUtil.defaultSize.height * 0.16,
            left: ScreenUtil.defaultSize.width * 0.07,
            child: SvgPicture.asset(
              "assets/HomeAssets/playIcon.svg",
              fit: BoxFit.fill,
            )),
        Positioned(
            bottom: ScreenUtil.defaultSize.height * 0.152,
            left: ScreenUtil.defaultSize.width * 0.14,
            child: Text(
              "Joker",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontSize: ScreenUtil.defaultSize.width * 0.06,
                  fontFamily: "Poppins"),
            )),
        Positioned(
            bottom: ScreenUtil.defaultSize.height * 0.12,
            left: ScreenUtil.defaultSize.width * 0.07,
            child: Text(
              "2hr 30 mins",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: const Color(0xfffff9f9),
                  fontSize: ScreenUtil.defaultSize.width * 0.03,
                  fontFamily: "Poppins"),
            )),
        Positioned(
            bottom: ScreenUtil.defaultSize.height * 0.035,
            left: ScreenUtil.defaultSize.width * 0.07,
            child: SizedBox(
              width: ScreenUtil.defaultSize.width*0.48,
              child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffc02739),
                ),
                child: const Text("Watch Now", style: TextStyle(fontFamily: "Poppins"),),
              ),
            )),
        Positioned(
            bottom: ScreenUtil.defaultSize.height * 0.03,
            left: ScreenUtil.defaultSize.width * 0.58,
            child: TextButton(
              onPressed: (){},
              style: TextButton.styleFrom(
                backgroundColor: Colors.transparent,

              ),
              child: SvgPicture.asset("assets/HomeAssets/heart.svg"),
            )),
        Positioned(
            bottom: ScreenUtil.defaultSize.height * 0.03,
            left: ScreenUtil.defaultSize.width * 0.76,
            child: TextButton(
              onPressed: (){},
              style: TextButton.styleFrom(
                backgroundColor: Colors.transparent,

              ),
              child: SvgPicture.asset("assets/HomeAssets/add.svg"),
            )),
        Positioned(
            bottom: ScreenUtil.defaultSize.height * 0.03,
            left: ScreenUtil.defaultSize.width * 0.94,
            child: TextButton(
              onPressed: (){},
              style: TextButton.styleFrom(
                backgroundColor: Colors.transparent,

              ),
              child: SvgPicture.asset("assets/HomeAssets/forward.svg"),
            )),
      ],
    );
  }
}
