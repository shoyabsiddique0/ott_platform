import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Episode extends StatelessWidget {
  final String epName;
  final void Function() goTo;

  const Episode({super.key, required this.epName, required this.goTo});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: goTo,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.w)),
        child: Column(
          children: [
            Image.asset("assets/DetailsAssets/Episode.png"),
            Padding(
              padding: EdgeInsets.only(left: 12.w),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/HomeAssets/playIcon.svg",
                    fit: BoxFit.fitWidth,
                    width: 10.w,
                  ),
                  Text(
                    " $epName",
                    style: const TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        overflow: TextOverflow.ellipsis),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
