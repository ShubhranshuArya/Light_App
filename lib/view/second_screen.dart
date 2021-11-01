import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:touchstone_assignment/constants/color_constants.dart';
import 'package:touchstone_assignment/constants/static_color_data.dart';
import 'package:touchstone_assignment/constants/static_light_data.dart';
import 'package:touchstone_assignment/custom_text.dart';
import 'package:touchstone_assignment/widgets/bottom_nav_bar.dart';
import 'package:touchstone_assignment/widgets/scenes_item.dart';
import 'package:websafe_svg/websafe_svg.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryBlue,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 24,
                    top: 20,
                  ),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          customText(
                            text: "Bed\nRoom",
                            fontSize: 26,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            textAlign: TextAlign.end,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: GestureDetector(
                              onTap: () => Get.back(),
                              child: WebsafeSvg.asset(
                                "assets/Icon ionic-md-arrow-round-back.svg",
                                height: 18,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      customText(
                        text: "4 Lights",
                        fontSize: 20,
                        color: primaryYellow,
                        fontWeight: FontWeight.w500,
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 52),
                  child: WebsafeSvg.asset(
                    "assets/light bulb.svg",
                    height: 140,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 48,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 24),
                    child: Container(
                      width: 132,
                      decoration: BoxDecoration(
                        color: (staticLightData[index]["colorBool"] == 1)
                            ? Colors.white
                            : primaryDarkBlue,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          WebsafeSvg.asset(
                            staticLightData[index]["icon"],
                            height: 16,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          customText(
                            text: staticLightData[index]["name"],
                            fontSize: 14,
                            color: (staticLightData[index]["colorBool"] == 1)
                                ? primaryDarkBlue
                                : Colors.white,
                            fontWeight: FontWeight.w700,
                            textAlign: TextAlign.end,
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: staticLightData.length,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 32),
                    child: Hero(
                      
                      tag: "container",
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(40),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 24,
                            left: 28,
                            right: 28,
                          ),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: customText(
                                  text: "Intensity",
                                  color: primaryDarkBlue,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  WebsafeSvg.asset(
                                    "assets/solution1.svg",
                                  ),
                                  Expanded(
                                    child: CupertinoSlider(
                                      activeColor: primaryYellow,
                                      min: 0,
                                      max: 10,
                                      value: (1),
                                      onChanged: (onChanged) {},
                                    ),
                                  ),
                                  WebsafeSvg.asset(
                                    "assets/solution.svg",
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: customText(
                                  text: "Colors",
                                  color: primaryDarkBlue,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Container(
                                height: 52,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (_, index) {
                                    return Padding(
                                      padding: EdgeInsets.only(right: 12),
                                      child: CircleAvatar(
                                        radius: 14,
                                        backgroundColor: staticColorData[index]
                                            ["color"],
                                        child: (staticColorData[index]["color"] ==
                                                Colors.white)
                                            ? Center(
                                                child: WebsafeSvg.asset(
                                                    "assets/+.svg"),
                                              )
                                            : Container(),
                                      ),
                                    );
                                  },
                                  itemCount: staticColorData.length,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: customText(
                                  text: "Scenes",
                                  color: primaryDarkBlue,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                  scenesItem(
                                    text: "Birthday",
                                    colorStart: secondaryRed,
                                    colorEnd: Color(0xffFFB693),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  scenesItem(
                                    text: "Party",
                                    colorStart: secondaryPurple,
                                    colorEnd: Color(0xffCF93EB),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                  scenesItem(
                                    text: "Relax",
                                    colorStart: secondaryBlue,
                                    colorEnd: Color(0xff93D9EB),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  scenesItem(
                                    text: "Fun",
                                    colorStart: secondaryGreen,
                                    colorEnd: Color(0xffB4E992),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 32,
                    top: 10,
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 8,
                            offset: Offset(0, 4),
                          )
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: WebsafeSvg.asset(
                          "assets/Icon awesome-power-off.svg",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottomNavBar(),
          ],
        ),
      ),
    );
  }
}
