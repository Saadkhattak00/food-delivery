import 'package:flutter/material.dart';
import 'package:food_delivery/Widgets/BigText.dart';
import 'package:food_delivery/Widgets/SmallText.dart';
import 'package:food_delivery/utilities/Colors.dart';
import 'package:food_delivery/utilities/dimensions.dart';

import 'FoodPageBody.dart';

class Home_Food_Page extends StatefulWidget {
  const Home_Food_Page({Key? key}) : super(key: key);

  @override
  State<Home_Food_Page> createState() => _Home_Food_PageState();
}

class _Home_Food_PageState extends State<Home_Food_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // For Header
          Container(
            child: Container(
              margin: EdgeInsetsDirectional.only(top: Dimensions.heigth45,bottom: Dimensions.heigth15),
              child: Padding(
                padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Column(
                    children: [
                      BigText(text: "Pakistan",color: AppColors.MainColor,),
                     Row(
                       children: [
                         SmallText(text: "Nowshera",color: Colors.black54,),
                         Icon(Icons.arrow_drop_down_rounded,size: Dimensions.icon24,),
                       ],
                     )
                    ],
                  ),
                  Container(
                    width: Dimensions.width45,
                    height: Dimensions.heigth45,
                    decoration: BoxDecoration(
                      color:AppColors.MainColor,
                      borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius15))
                    ),
                    child: (
                    Icon(Icons.search,color: Colors.white,)
                    ),
                  )
                  ],
                ),
              ),
            ),
          ),
          // for Body
          Expanded(child: SingleChildScrollView(child: FoodPageBody())),
        ],
      ),
    );
  }
}
