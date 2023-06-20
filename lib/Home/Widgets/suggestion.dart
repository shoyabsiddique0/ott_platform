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
            bottom: 98.h,
            left: 25.2.w,
            child: SvgPicture.asset(
              "assets/HomeAssets/playIcon.svg",
              fit: BoxFit.fill,
            )),
        Positioned(
            bottom: 92.h,
            left: 45.4.w,
            child: Text(
              "Joker",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontSize: 21.6.w,
                  fontFamily: "Poppins"),
            )),
        Positioned(
            bottom: 72.h,
            left: 25.w,
            child: Text(
              "2hr 30 mins",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: const Color(0xfffff9f9),
                  fontSize: 10.8.w,
                  fontFamily: "Poppins"),
            )),
        Positioned(
            bottom: 21.5.h,
            left: 25.w,
            child: SizedBox(
              width: 140.w,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffc02739),
                ),
                child: const Text(
                  "Watch Now",
                  style: TextStyle(fontFamily: "Poppins"),
                ),
              ),
            )),
        Positioned(
            bottom: 18.h,
            right: 115.w,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.transparent,
              ),
              child: SvgPicture.asset("assets/HomeAssets/heart.svg"),
            )),
        Positioned(
            bottom: 18.h,
            right: 58.w,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.transparent,
              ),
              child: SvgPicture.asset("assets/HomeAssets/add.svg"),
            )),
        Positioned(
            bottom: 18.h,
            right: 1.w,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.transparent,
              ),
              child: SvgPicture.asset("assets/HomeAssets/forward.svg"),
            )),
      ],
    );
  }
}
