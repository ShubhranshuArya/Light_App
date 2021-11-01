import 'package:flutter/material.dart';
import 'package:touchstone_assignment/constants/color_constants.dart';
import 'package:touchstone_assignment/custom_text.dart';
import 'package:touchstone_assignment/widgets/bottom_nav_bar.dart';
import 'package:touchstone_assignment/widgets/room_item.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryBlue,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 32,
                left: 32,
                right: 32,
                bottom: 32,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText(
                    text: "Control\nPanel",
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Container(
                        height: 46,
                        width: 46,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset("assets/person.jpg"),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 8,
                        backgroundColor: secondaryRed,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
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
                      left: 32,
                      right: 32,
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: customText(
                            text: "All Rooms",
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            roomItem(
                              height: 130,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            roomItem(
                              height: 130,
                              image: "assets/room.svg",
                              headText: "Living Room",
                              lights: 2,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            roomItem(
                              height: 130,
                              image: "assets/kitchen.svg",
                              headText: "Kitchen",
                              lights: 5,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            roomItem(
                              height: 130,
                              image: "assets/bathtube.svg",
                              headText: "Bathroom",
                              lights: 5,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            roomItem(
                              height: 130,
                              image: "assets/house.svg",
                              headText: "Outdoor",
                              lights: 5,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            roomItem(
                              height: 130,
                              image: "assets/balcony.svg",
                              headText: "Balcony",
                              lights: 2,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            bottomNavBar(),
          ],
        ),
      ),
    );
  }
}
