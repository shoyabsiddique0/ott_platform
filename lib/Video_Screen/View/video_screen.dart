import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ott_platform/Video_Screen/controller/video_controller.dart';
import 'package:ott_platform/Video_Screen/widgets/episode_play.dart';
import 'package:ott_platform/customPlayer/widgets/player.dart';

// ignore: must_be_immutable
class VideoScreen extends StatelessWidget {
  final String link;
  VideoScreen({Key? key, required this.link}) : super(key: key);
  VideoController controller = Get.put(VideoController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          // direction: Axis.vertical,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PotraitPlayer(link: link, aspectRatio: 6 / 4),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 20.w, left: 20.w, right: 20.w),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "50 Shades of Grey",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Season 1 / 10 Episode",
                        style: TextStyle(
                            color: Colors.white70,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25.w,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.w, right: 20.w),
                  child: Text(
                    'Episode List',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 20.w,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.w,
                ),
                const EpisodePlay(),
                SizedBox(
                  height: 15.w,
                ),
                const EpisodePlay(),
                SizedBox(
                  height: 15.w,
                ),
                const EpisodePlay(),
                SizedBox(
                  height: 15.w,
                ),
                const EpisodePlay(),
                SizedBox(
                  height: 15.w,
                ),
                const EpisodePlay(),
                SizedBox(
                  height: 15.w,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
