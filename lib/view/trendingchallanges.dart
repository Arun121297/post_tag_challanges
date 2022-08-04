import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:post_tag_challanges/config/colors.dart';
import 'package:post_tag_challanges/config/extension.dart';
import 'package:post_tag_challanges/controller/controller.dart';

import '../config/size_config.dart';

class Challanges extends StatefulWidget {
  const Challanges({Key? key}) : super(key: key);

  @override
  State<Challanges> createState() => _ChallangesState();
}

class _ChallangesState extends State<Challanges> {
  Controller controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          ///header
          Container(
            height: MediaQuery.of(context).size.height *
                51 /
                MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: bg_color1,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "Rock Climbing in a slippery surface in 12 minutes",
                style: GoogleFonts.poppins(
                    letterSpacing: -0.18,
                    fontSize: MediaQuery.of(context).size.height * 0.014,
                    color: white,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          ////body
          Stack(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height *
                  484 /
                  MediaQuery.of(context).size.height,
              color: Colors.grey,
              child: CarouselSlider.builder(
                carouselController: controller.controller,
                options: CarouselOptions(
                  height: MediaQuery.of(context).size.height *
                      484 /
                      MediaQuery.of(context).size.height,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  onPageChanged: ((index, reason) {
                    setState(() {
                      controller.current = index;
                    });
                  }),
                  enlargeCenterPage: true,
                  autoPlay: false,
                ),
                itemCount: controller.image_list.length,
                itemBuilder: (context, index, realIndex) => Stack(children: [
                  Container(
                    height: MediaQuery.of(context).size.height *
                        484 /
                        MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: white,
                    child: Image.asset(
                      controller.image_list[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ]),
              ),
            ),

            ///profile
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Stack(children: [
                Container(
                  height: MediaQuery.of(context).size.height *
                      32 /
                      MediaQuery.of(context).size.height,
                  constraints: BoxConstraints(
                      minWidth: MediaQuery.of(context).size.width *
                          118 /
                          MediaQuery.of(context).size.width),
                  decoration: BoxDecoration(
                    color: profile,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left: 35, top: 6),
                    child: Text(
                      "aaaaaaaaaaaaaaaa",
                      style: TextStyle(color: white),
                      // textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height *
                      30 /
                      MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width *
                      32 /
                      MediaQuery.of(context).size.width,
                  child: CircleAvatar(
                    backgroundImage: ExactAssetImage("images/grid_image3.png"),
                  ),
                )
              ]),
            ),

            ///sidecontainer
            Align(
              heightFactor: 1.5,
              alignment: Alignment.centerRight,
              child: Container(
                decoration: BoxDecoration(
                    color: black.withOpacity(0.3),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30))),
                height: MediaQuery.of(context).size.height *
                    306 /
                    MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width *
                    49 /
                    MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    controller.options(context, "images/heart1.png"),
                    controller.options(context, "images/speech-bubble1.png"),
                    controller.options(context, "images/team1.png"),
                    controller.options(context, "images/like2.png"),
                    controller.options(context, "images/like3.png"),
                  ],
                ),
              ),
            ),

            ///footer

            Align(
              heightFactor: 8,
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      color: bg_color1,
                      height: MediaQuery.of(context).size.height *
                          54 /
                          MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width / 2 - 0.5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height *
                                16 /
                                MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width *
                                32 /
                                MediaQuery.of(context).size.width,
                            child: Image.asset("images/Vector.png"),
                          ),
                          Text(
                            "150 Participated",
                            style: GoogleFonts.poppins(
                                letterSpacing: -0.18,
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.013,
                                color: white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: bg_color1,
                      height: MediaQuery.of(context).size.height *
                          54 /
                          MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width / 2 - 0.5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height *
                                14 /
                                MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width *
                                20 /
                                MediaQuery.of(context).size.width,
                            child: Image.asset("images/Vector1.png"),
                          ),
                          Text(
                            "243 Views",
                            style: GoogleFonts.poppins(
                                letterSpacing: -0.18,
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.013,
                                color: white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            ///overflow container

            Align(
              heightFactor: 10,
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(top: 29.2),
                height: MediaQuery.of(context).size.height *
                    20 /
                    MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width *
                    141 /
                    MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: overflow_container_clr,
                  borderRadius: BorderRadius.circular(23),
                  border: Border.all(color: white, width: 1),
                ),
              ),
            ),

            ///dottedline
            Align(
              heightFactor: 6.9,
              alignment: Alignment.bottomCenter,
              child: Container(
                // alignment: Alignment(2, 2),
                margin: EdgeInsets.only(left: 70),
                padding: EdgeInsets.only(left: 70),
                child: Row(
                  children: controller.image_list.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () =>
                          controller.controller.animateToPage(entry.key),
                      child: Container(
                        width:
                            controller.current == entry.key ? 5.33.wp : 2.13.wp,
                        height: 0.70.hp,
                        margin: const EdgeInsets.symmetric(
                            vertical: 35.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                            shape: controller.current == entry.key
                                ? BoxShape.rectangle
                                : BoxShape.circle,
                            borderRadius: controller.current == entry.key
                                ? const BorderRadius.all(
                                    const Radius.circular(8),
                                  )
                                : null,
                            color:
                                (Theme.of(context).brightness == Brightness.dark
                                        ? white
                                        : white)
                                    .withOpacity(controller.current == entry.key
                                        ? 0.9
                                        : 0.4)),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
