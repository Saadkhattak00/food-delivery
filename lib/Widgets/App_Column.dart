import 'package:flutter/material.dart';
import 'package:food_delivery/Widgets/BigText.dart';
import 'package:food_delivery/Widgets/IconAndText.dart';
import 'package:food_delivery/Widgets/SmallText.dart';
import 'package:food_delivery/utilities/Colors.dart';
import 'package:food_delivery/utilities/dimensions.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text,size: Dimensions.font26,),
        SizedBox(height: Dimensions.heigth10,),
        Row(
          children: [
            Wrap(
              children: List.generate(5, (index) => Icon(Icons.star,color: AppColors.MainColor,size: Dimensions.icon15,)),
            ),
            SizedBox(width: Dimensions.width10,),
            SmallText(text: "4.5"),
            SizedBox(width: Dimensions.width10,),
            SmallText(text: "1287"),
            SizedBox(width: Dimensions.width10,),
            SmallText(text: "comments")
          ],
        ),
        SizedBox(height: Dimensions.heigth20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            IconAndText(icon: Icons.circle_sharp, iconColor: AppColors.iconColor1, text: "Normal"),

            IconAndText(icon: Icons.location_on, iconColor: AppColors.MainColor, text: "1.2km"),
            IconAndText(icon: Icons.access_time, iconColor: AppColors.iconColor2, text: "32min"),
          ],
        )

      ],
    );
  }
}
