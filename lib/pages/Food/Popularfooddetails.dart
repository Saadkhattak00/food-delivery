import 'package:flutter/material.dart';
import 'package:food_delivery/Widgets/App_Column.dart';
import 'package:food_delivery/Widgets/App_Icon.dart';
import 'package:food_delivery/Widgets/BigText.dart';

import 'package:food_delivery/utilities/Colors.dart';
import 'package:food_delivery/utilities/dimensions.dart';

import '../../Widgets/Expandalbe_Text.dart';

class PopularFoodDetails extends StatelessWidget {
  const PopularFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //For Image
          Positioned(
              left: 0,
              right: 0,
              child: Container(
            height: Dimensions.popularimageview,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("images/testimage.webp")
              )
            ),

          )),
          //For Icons
          Positioned(
            top: Dimensions.heigth20,
            left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon:Icons.arrow_back_ios),
                  AppIcon(icon:Icons.shopping_cart_outlined),

                ],
              )),
          //For Introduction
        Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularimageview-20,
              child: Container(
                padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20,top: Dimensions.heigth20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(Dimensions.radius20),topRight: Radius.circular(Dimensions.radius20))
                ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(text: "Chinese Side",),
                    SizedBox(height: Dimensions.heigth20,),
                    BigText(text: "Description"),
                    Expanded(child: SingleChildScrollView(child: ExpandableText.ExpandableText(text:"The Chinese culture has a deep rooted affection for food and any celebration is incomplete without food. What makes their food unique is that each recipe has a meaning attached to it; every ingredient whether it is vegetable, meat, or spice holds a meaning.The Chinese culture has a deep rooted affection for food and any celebration is incomplete without food. What makes their food unique is that each recipe has a meaning attached to it; every ingredient whether it is vegetable, meat, or spice holds a meaning.The Chinese culture has a deep rooted affection for food and any celebration is incomplete without food. What makes their food unique is that each recipe has a meaning attached to it; every ingredient whether it is vegetable, meat, or spice holds a meaning." )))
                  ],
                ),
              ))
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: Dimensions.width20,top: Dimensions.heigth30,bottom: Dimensions.heigth30,right: Dimensions.width20),
        height: Dimensions.bottomHeightBar,
        decoration: BoxDecoration(
          color: AppColors.buttonbackgroundColor,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(Dimensions.radius20*2),topRight: Radius.circular(Dimensions.radius20*2))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: Dimensions.heigth20,bottom: Dimensions.heigth20,left: Dimensions.width20,right: Dimensions.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(Icons.remove,color: AppColors.signColor,),
                  SizedBox(width: Dimensions.width10/2,),
                  BigText(text: "0"),
                  SizedBox(width: Dimensions.width10/2,),
                  Icon(Icons.add,color: AppColors.signColor,),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: Dimensions.heigth20,bottom: Dimensions.heigth20,left: Dimensions.width20,right: Dimensions.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.MainColor,
              ),
              child: BigText(text: "\$ 10 | Add to cart",color: Colors.white,),
            )
          ],
        ),
      ),

    );
  }
}
