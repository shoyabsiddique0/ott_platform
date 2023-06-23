import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ott_platform/Details/Widgets/episode.dart';
import 'package:ott_platform/Video_Screen/View/video_screen.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.black),
        child: BottomNavigationBar(
            backgroundColor: Colors.black,
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/HomeAssets/home.svg",
                    fit: BoxFit.fitHeight,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/HomeAssets/category.svg",
                  ),
                  label: "Category"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/HomeAssets/search.svg",
                  ),
                  label: "Search"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/HomeAssets/profile.svg",
                  ),
                  label: "Profile"),
            ],
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            showUnselectedLabels: true,
            showSelectedLabels: true,
            elevation: 0),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
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
                  child: Image.asset("assets/DetailsAssets/Card.png")),
              Positioned(
                  bottom: 92.h,
                  left: 25.w,
                  child: Text(
                    "50 shades of grey",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 20.w,
                        fontFamily: "Poppins"),
                  )),
              Positioned(
                  bottom: 72.h,
                  left: 25.w,
                  child: Text(
                    "Season 4 / 10 episodes",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: const Color.fromARGB(179, 255, 249, 249),
                        fontSize: 10.8.w,
                        fontFamily: "Poppins"),
                  )),
              Positioned(
                  bottom: 18.h,
                  left: 10.w,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                    child: SvgPicture.asset("assets/HomeAssets/play.svg"),
                  )),
              Positioned(
                  bottom: 18.h,
                  left: 67.w,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                    child: SvgPicture.asset("assets/HomeAssets/heart.svg"),
                  )),
              Positioned(
                  bottom: 18.h,
                  left: 124.w,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                    child: SvgPicture.asset("assets/HomeAssets/add.svg"),
                  )),
              Positioned(
                  bottom: 18.h,
                  left: 182.w,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                    child: SvgPicture.asset("assets/HomeAssets/forward.svg"),
                  )),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 25.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Description",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: const Color(0xbffff9f9),
                      fontSize: 16.w,
                      fontFamily: "Poppins"),
                ),
                Text(
                  "Fifty Shades is a British-American film trilogy series based on the Fifty Shades trilogy by English author E. L. James. It is distributed by Universal Studios and stars Dakota Johnson and Jamie Dornan as the lead roles Anastasia Steele and Christian Grey, respectively",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: const Color(0xbffff9f9),
                      fontSize: 10.w,
                      fontFamily: "Poppins"),
                ),
                SizedBox(
                  height: 24.w,
                ),
                Text(
                  "Episodes",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: const Color(0xbffff9f9),
                      fontSize: 16.w,
                      fontFamily: "Poppins"),
                ),
                SizedBox(
                  height: 16.w,
                ),
                CarouselSlider(
                    items: [
                      Episode(
                        epName: "Ep 1 - Lorem ipsum",
                        goTo: () {
                          Get.to(() => VideoScreen(
                                link:
                                    "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
                              ));
                        },
                      ),
                      Episode(
                        epName: "Ep 2 - Lorem ipsum",
                        goTo: () {
                          Get.to(() => VideoScreen(
                                link:
                                    "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
                              ));
                        },
                      ),
                      Episode(
                        epName: "Ep 3 - Lorem ipsum",
                        goTo: () {
                          Get.to(() => VideoScreen(
                                link:
                                    "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
                              ));
                        },
                      ),
                    ],
                    options: CarouselOptions(
                        viewportFraction: 0.5.w,
                        padEnds: false,
                        enableInfiniteScroll: false))
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
