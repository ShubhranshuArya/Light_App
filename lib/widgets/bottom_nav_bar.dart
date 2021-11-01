import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

Widget bottomNavBar() {
  return Container(
    height: 68,
    color: Colors.white,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        WebsafeSvg.asset("assets/bulb.svg"),
        SizedBox(
          width: 80,
        ),
        WebsafeSvg.asset("assets/Icon feather-home.svg"),
        SizedBox(
          width: 80,
        ),
        WebsafeSvg.asset("assets/Icon feather-settings.svg"),
      ],
    ),
  );
}
