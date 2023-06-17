import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ott_platform/Home/Controller/home_controller.dart';
import 'package:ott_platform/Home/Widgets/cardView.dart';
import 'package:ott_platform/Home/Widgets/suggestion.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  HomeController homeController = Get.put(HomeController());
  CarouselController _controller = CarouselController();
  List<Suggestion> suggestionList = [
    Suggestion(),
    Suggestion(),
    Suggestion(),
    Suggestion(),
  ];
  List<CardView> recentList = [
    CardView(
        name: "Harley Quinn",
        duration: "2hrs 30mins",
        image: "assets/HomeAssets/card1.png"),
    CardView(
        name: "Harley Quinn",
        duration: "2hrs 30mins",
        image: "assets/HomeAssets/card1.png"),
    CardView(
        name: "Harley Quinn",
        duration: "2hrs 30mins",
        image: "assets/HomeAssets/card1.png"),
    CardView(
        name: "Harley Quinn",
        duration: "2hrs 30mins",
        image: "assets/HomeAssets/card1.png"),
    CardView(
        name: "Harley Quinn",
        duration: "2hrs 30mins",
        image: "assets/HomeAssets/card1.png"),
  ];
  List<CardView> trendingList = [
    CardView(
        name: "50 Shades of Grey",
        duration: "2hrs 30mins",
        image: "assets/HomeAssets/card2.png"),
    CardView(
        name: "50 Shades of Grey",
        duration: "2hrs 30mins",
        image: "assets/HomeAssets/card2.png"),
    CardView(
        name: "50 Shades of Grey",
        duration: "2hrs 30mins",
        image: "assets/HomeAssets/card2.png"),
    CardView(
        name: "50 Shades of Grey",
        duration: "2hrs 30mins",
        image: "assets/HomeAssets/card2.png"),
    CardView(
        name: "50 Shades of Grey",
        duration: "2hrs 30mins",
        image: "assets/HomeAssets/card2.png"),
  ];
  List<Image> collectionList1 = [
    Image.asset("assets/HomeAssets/collection1.png"),
    Image.asset("assets/HomeAssets/collection1.png"),
    Image.asset("assets/HomeAssets/collection1.png"),
    Image.asset("assets/HomeAssets/collection1.png"),
  ];
  List<Image> collectionList2 = [
    Image.asset("assets/HomeAssets/collection2.png"),
    Image.asset("assets/HomeAssets/collection2.png"),
    Image.asset("assets/HomeAssets/collection2.png"),
    Image.asset("assets/HomeAssets/collection2.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.black
        ),
        child: BottomNavigationBar(
            backgroundColor: Colors.black,
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/HomeAssets/home.svg",
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
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                items: suggestionList,
                options: CarouselOptions(
                    aspectRatio: 450 / 460,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      homeController.current.value = index;
                    }),
                carouselController: _controller,
              ),
              Obx(() => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: suggestionList.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Container(
                          width: 6.0,
                          height: 6.0,
                          margin: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: (Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? const Color(0xffD6B5BB)
                                      : const Color(0xffE41238))
                                  .withOpacity(
                                      homeController.current.value == entry.key
                                          ? 0.9
                                          : 0.4)),
                        ),
                      );
                    }).toList(),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                padding:
                    EdgeInsets.only(left: ScreenUtil.defaultSize.width * 0.05),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                            text: TextSpan(
                                text: "Recently ",
                                children: [
                                  TextSpan(
                                      text: "Started",
                                      style: TextStyle(
                                          fontSize:
                                              ScreenUtil.defaultSize.width *
                                                  0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold))
                                ],
                                style: TextStyle(
                                  fontSize: ScreenUtil.defaultSize.width * 0.05,
                                  color: Color(0xffc02739),
                                  fontFamily: "Poppins",
                                ))),
                        Container(
                          padding: EdgeInsets.only(
                              right: ScreenUtil.defaultSize.width * 0.05),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "View All",
                                style: TextStyle(
                                    fontFamily: "Poppins", color: Colors.grey),
                              )),
                        )
                      ],
                    ),
                    CarouselSlider(
                        items: recentList,
                        options: CarouselOptions(
                            viewportFraction: 0.4,
                            enableInfiniteScroll: false,
                            padEnds: false)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                            text: TextSpan(
                                text: "Trending ",
                                children: [
                                  TextSpan(
                                      text: "Now",
                                      style: TextStyle(
                                          fontSize:
                                              ScreenUtil.defaultSize.width *
                                                  0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold))
                                ],
                                style: TextStyle(
                                  fontSize: ScreenUtil.defaultSize.width * 0.05,
                                  color: Color(0xffc02739),
                                  fontFamily: "Poppins",
                                ))),
                        Container(
                          padding: EdgeInsets.only(
                              right: ScreenUtil.defaultSize.width * 0.05),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "View All",
                                style: TextStyle(
                                    fontFamily: "Poppins", color: Colors.grey),
                              )),
                        )
                      ],
                    ),
                    CarouselSlider(
                        items: trendingList,
                        options: CarouselOptions(
                            viewportFraction: 0.4,
                            enableInfiniteScroll: false,
                            padEnds: false)),
                    Container(
                      padding: EdgeInsets.only(
                          right: ScreenUtil.defaultSize.width * 0.05),
                      child: CarouselSlider(
                          items: collectionList1,
                          options: CarouselOptions(
                              onPageChanged: (index, reason) {
                                homeController.collection1.value = index;
                              },
                              viewportFraction: 1)),
                    ),
                    Obx(() => Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                              collectionList1.asMap().entries.map((entry) {
                            return Container(
                              width: 6.0,
                              height: 6.0,
                              margin: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 4.0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: (Theme.of(context).brightness ==
                                              Brightness.dark
                                          ? const Color(0xffD6B5BB)
                                          : const Color(0xffE41238))
                                      .withOpacity(
                                          homeController.collection1.value ==
                                                  entry.key
                                              ? 0.9
                                              : 0.4)),
                            );
                          }).toList(),
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                            text: TextSpan(
                                text: "Trending ",
                                children: [
                                  TextSpan(
                                      text: "Now",
                                      style: TextStyle(
                                          fontSize:
                                              ScreenUtil.defaultSize.width *
                                                  0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold))
                                ],
                                style: TextStyle(
                                  fontSize: ScreenUtil.defaultSize.width * 0.05,
                                  color: Color(0xffc02739),
                                  fontFamily: "Poppins",
                                ))),
                        Container(
                          padding: EdgeInsets.only(
                              right: ScreenUtil.defaultSize.width * 0.05),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "View All",
                                style: TextStyle(
                                    fontFamily: "Poppins", color: Colors.grey),
                              )),
                        )
                      ],
                    ),
                    CarouselSlider(
                        items: recentList,
                        options: CarouselOptions(
                            viewportFraction: 0.4,
                            enableInfiniteScroll: false,
                            padEnds: false)),
                    Container(
                      padding: EdgeInsets.only(
                          right: ScreenUtil.defaultSize.width * 0.05),
                      child: CarouselSlider(
                          items: collectionList2,
                          options: CarouselOptions(
                              onPageChanged: (index, reason) {
                                homeController.collection2.value = index;
                              },
                              viewportFraction: 1)),
                    ),
                    Obx(() => Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                              collectionList2.asMap().entries.map((entry) {
                            return Container(
                              width: 6.0,
                              height: 6.0,
                              margin: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 4.0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: (Theme.of(context).brightness ==
                                              Brightness.dark
                                          ? const Color(0xffD6B5BB)
                                          : const Color(0xffE41238))
                                      .withOpacity(
                                          homeController.collection2.value ==
                                                  entry.key
                                              ? 0.9
                                              : 0.4)),
                            );
                          }).toList(),
                        )),
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
