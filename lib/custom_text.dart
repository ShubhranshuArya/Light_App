import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customText({
  String text = "text",
  double fontSize = 20,
  Color color = Colors.white,
  FontWeight fontWeight = FontWeight.w400,
  TextAlign textAlign = TextAlign.start,
}) {
  return Text(
    text,
    style: GoogleFonts.montserrat(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      
    ),
    textAlign: textAlign,
  );
}
