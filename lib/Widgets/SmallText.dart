import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;


  SmallText({required this.text, this.color = const Color(0xFFccc7c5),this.size = 12,this.height = 1.5});

  @override
  Widget build(BuildContext context) {
    return Text(
        text,

        style:GoogleFonts.roboto(textStyle:
        TextStyle(
            color: color,
            fontSize: size,
            fontWeight: FontWeight.w400,
            height: height,
        )
        )
    );
  }
}
