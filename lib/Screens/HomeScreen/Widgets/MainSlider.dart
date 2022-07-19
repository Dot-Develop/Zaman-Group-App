// import 'dart:ffi';
//
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class MainSlider extends StatelessWidget {
//   final List<String> imgList = [
//     "https://yt3.ggpht.com/a/AATXAJz_h8Bhv1mL10pAHlhtgxEwXJt2vdoBnapvmF-dBw=s900-c-k-c0xffffffff-no-rj-mo",
//     "https://cdn.statically.io/img/pool.img.aptoide.com/split-store/18d53c8b061d598bfc5fe11a82d291e8_icon.jpg",
//   ];
//
//   Widget build(BuildContext context) {
//     return CarouselSlider(
//       options: CarouselOptions(
//         height: 160,
//         aspectRatio: 16 / 9,
//         viewportFraction: 1,
//         initialPage: 0,
//         enableInfiniteScroll: true,
//         reverse: false,
//         autoPlay: true,
//         autoPlayInterval: Duration(seconds: 3),
//         autoPlayAnimationDuration: Duration(milliseconds: 1500),
//         autoPlayCurve: Curves.fastOutSlowIn,
//         enlargeCenterPage: true,
//         scrollDirection: Axis.horizontal,
//       ),
//       items: imgList
//           .map((item) => Container(
//                 child: Center(
//                     child: Image.network(
//                   item,
//                   fit: BoxFit.cover,
//                   width: double.infinity,
//                 )),
//               ))
//           .toList(),
//     );
//   }
// }

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainSlider extends StatelessWidget {
  final bool isMainPage;

  MainSlider({@required this.isMainPage});

  final List<String> mainImgList = [
    "assets/slide/3.jpg",
    "assets/slide/3.jpg",
    "assets/slide/5.jpg",
    "assets/slide/8.jpg",
  ];

  final List<String> seconderyImgList = [
    "assets/slide/10.jpg",
    "assets/slide/11.jpg"
  ];

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: CarouselSlider(
        options: CarouselOptions(
          height: 175,
          aspectRatio: 16 / 9,
          // viewportFraction: 0.98,
          viewportFraction: 1,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 1500),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: false,
          scrollDirection: Axis.horizontal,
        ),
        items: isMainPage
            ? mainImgList
                .map((item) => Container(
                      child: Container(
                        // margin: EdgeInsets.symmetric(vertical: 3, horizontal: 2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.0),
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Colors.black54,
                            //     blurRadius: 0.2,
                            //     offset: Offset(1.6, 1),
                            //     spreadRadius: 0.2,
                            //   ),
                            // ]
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(2.0),
                          child: Center(
                              child: Image.asset(item, fit: BoxFit.cover)),
                        ),
                      ),
                    ))
                .toList()
            : seconderyImgList
                .map((item) => Container(
                      child: Container(
                        // margin: EdgeInsets.symmetric(vertical: 3, horizontal: 2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.0),
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Colors.black54,
                            //     blurRadius: 0.2,
                            //     offset: Offset(1.6, 1),
                            //     spreadRadius: 0.2,
                            //   ),
                            // ]
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(2.0),
                          child: Center(
                              child: Image.asset(item, fit: BoxFit.cover)),
                        ),
                      ),
                    ))
                .toList(),
      ),
    );
  }
}
