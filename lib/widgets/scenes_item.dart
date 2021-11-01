import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:touchstone_assignment/custom_text.dart';
import 'package:websafe_svg/websafe_svg.dart';

Widget scenesItem({
  double height = 64,
  String text = "Scenes",
  Color colorStart = Colors.white,
  Color colorEnd = Colors.black,
}) {
  return Expanded(
    flex: 1,
    child: Container(
      height: height,
      decoration: BoxDecoration(
        color: colorStart,
        gradient: LinearGradient(colors: [
          colorStart,
          colorEnd,
        ]),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            WebsafeSvg.asset("assets/surface2.svg"),
            SizedBox(
              width: 24,
            ),
            customText(
              text: text,
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ],
        ),
      ),
    ),
  );
}
