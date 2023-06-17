import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardView extends StatelessWidget {
  final String name;
  final String duration;
  final String image;
  CardView({super.key, required this.name, required this.duration, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Image.asset(image),
            Positioned(
              bottom: ScreenUtil.defaultSize.width*0.02,
              right: ScreenUtil.defaultSize.width*0.01,
              child: Text(duration, style: TextStyle(
                color: Colors.white,
                fontSize: ScreenUtil.defaultSize.width*0.03),),
            )
          ]
        ),
        SizedBox(height: ScreenUtil.defaultSize.width*0.01,),
        Row(
          children: [
            SvgPicture.asset("assets/HomeAssets/playIcon.svg"),
            Text("  $name", style: TextStyle(
              color: Colors.white,
              fontFamily: "Poppins",
              overflow: TextOverflow.ellipsis
            ),),
          ],
        )
      ],
    );
  }
}
