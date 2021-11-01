import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:touchstone_assignment/constants/color_constants.dart';
import 'package:touchstone_assignment/custom_text.dart';
import 'package:touchstone_assignment/view/second_screen.dart';
import 'package:websafe_svg/websafe_svg.dart';

Widget roomItem({
  double height = 40,
  String image = "assets/bed.svg",
  String headText = "All Rooms",
  int lights = 4,
}) {
  return Expanded(
    flex: 1,
    child: GestureDetector(
      onTap: () => Get.to(SecondScreen()),
      child: Container(
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.grey.withOpacity(0.4),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: 16,
            left: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WebsafeSvg.asset(image,height: 42),
              SizedBox(height: 20,),
              customText(
                text: headText,
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 16,
                
              ),
              customText(
                text: "$lights Lights",
                color: primaryYellow,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
