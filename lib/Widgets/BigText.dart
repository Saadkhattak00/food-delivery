import 'package:flutter/material.dart';
import 'package:food_delivery/utilities/dimensions.dart';
import 'package:google_fonts/google_fonts.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;

   BigText({required this.text, this.color = const Color(0xFF332d2b),this.size = 0,this.overflow = TextOverflow.ellipsis});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow:overflow,
      maxLines: 1,
      style:GoogleFonts.roboto(textStyle:
      TextStyle(
        color: color,
        fontSize: size==0?Dimensions.font20:size,
        fontWeight: FontWeight.w400
      )
      )
    );
  }
}
