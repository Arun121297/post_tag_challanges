import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class Controller extends GetxController {
  var current;
  final CarouselController controller = CarouselController();
  // final List<String> imgList = [];
  List image_list = [
    "images/grid_image3.png",
    "images/video-games_1202.png",
    "images/video-games_12002.png",
    "images/Rectangle1122.png",
    "images/Rectangle1145.png",
    // "images/team1.png"
  ];

  ///Like share comment
  options(context, string) {
    return Container(
      height: MediaQuery.of(context).size.height *
          19 /
          MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width *
          19 /
          MediaQuery.of(context).size.width,
      child: Image.asset(string),
    );
  }
}
