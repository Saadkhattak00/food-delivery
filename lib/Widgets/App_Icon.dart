import 'package:flutter/material.dart';
import 'package:food_delivery/utilities/dimensions.dart';

class AppIcon extends StatelessWidget {

  final IconData icon;
  final Color backgroundcolor;
  final Color color;
  final double size;
  final double Iconsize;
  AppIcon({Key? key, required this.icon, this.backgroundcolor = const Color(0xFFfcf4e4),
    this.color = const Color(0xFF756d54), this.size=40, this.Iconsize=16}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: backgroundcolor,
        borderRadius: BorderRadius.circular(size/2)
      ),
      child: Icon(
        icon,
        color: color,
        size: Iconsize,
      ),
    );
  }
}
