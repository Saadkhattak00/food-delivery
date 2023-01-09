import 'package:flutter/material.dart';
import 'package:food_delivery/Widgets/SmallText.dart';
import 'package:food_delivery/utilities/dimensions.dart';

class IconAndText extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String text;
  const IconAndText({Key? key, required this.icon,
    required this.iconColor,
    required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color: iconColor,size: Dimensions.icon24,),
        SizedBox(width: 5,),
        SmallText(text: text)
      ],
    );
  }
}
