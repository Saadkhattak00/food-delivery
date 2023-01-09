import'package:flutter/material.dart';
import 'package:food_delivery/Widgets/BigText.dart';
import 'package:food_delivery/Widgets/Expandalbe_Text.dart';
import '../../Widgets/App_Icon.dart';
import '../../utilities/Colors.dart';
import '../../utilities/dimensions.dart';

class RecommendedFoodDetails extends StatelessWidget {
  const RecommendedFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: Dimensions.height80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon:Icons.clear_outlined),
                AppIcon(icon:Icons.shopping_cart_outlined),

              ],
            ),
            bottom: PreferredSize(preferredSize: Size.fromHeight(Dimensions.heigth30),
              child: Container(
                padding: const EdgeInsets.only(top:5,bottom: 10),
                child: Center(child: BigText(text: "Chinese Side",size: Dimensions.font26,)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(Dimensions.radius20),topRight: Radius.circular(Dimensions.radius20),)
                ),
              ),),
            backgroundColor:AppColors.yellowColor,
            pinned: true,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("images/testimage.webp",
              width: double.maxFinite,
              fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
               Container(
                 padding:EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20,top: Dimensions.heigth10,bottom: Dimensions.heigth20),
                 child:
               const ExpandableText.ExpandableText(text: "The Chinese culture has a deep rooted affection for food and any celebration is incomplete without food. What makes their food unique is that each recipe has a meaning attached to it;"
                   " every ingredient whether it is vegetable, meat, or spice holds a meaning.The Chinese "
                   "culture has a deep rooted affection for food and any celebration is incomplete without food. What makes their "
                   "food unique is that each recipe has a meaning attached to it; every ingredient whether it is vegetable, meat, or"
                   " spice holds a meaning.The Chinese culture has a deep rooted affection for food and any celebration is incomplete without food. "
                   "What makes their food unique is that each recipe has a meaning attached to it every ingredient whether it is vegetable, meat, or spice "
                   "holds a meaning.The Chinese culture has a deep rooted affection for food and any celebration is incomplete without food. What makes their food unique is"
                   " that each recipe has a meaning attached to it; every ingredient whether it is vegetable, meat, or spice holds a meaning.The Chinese culture has a deep rooted affection for food "
                   "and any celebration is incomplete without food. What makes their food unique is that each recipe has a meaning attached to it; every ingredient whether it is vegetable, meat, or spice holds a"
                   " meaning.The Chinese culture has a deep rooted affection for food and any celebration is incomplete without food. What makes their food unique is that each recipe has a meaning attached to it every"
                   " ingredient whether it is vegetable, meat, or spice holds a meaning.The Chinese culture has a deep rooted affection for food and any celebration is incomplete without food. What makes their food unique is "
                   "that each recipe has a meaning attached to it; every ingredient whether it is vegetable, meat, or spice holds a meaning.The Chinese culture has a deep rooted affection for food and any celebration is incomplete without food."
                   " What makes their food unique is that each recipe has a meaning attached to it; every ingredient whether it is vegetable, meat, or spice holds a meaning.The Chinese culture has a deep rooted affection "
                   "for food and any celebration is incomplete without food. What"
                   " makes their food unique is that each recipe has a meaning attached to "
                   "it every ingredient whether it is vegetable, meat, or spice holds a meaning."
                   "The Chinese culture has a deep rooted affection for food and any celebration is "
                   "incomplete without food. What makes their food unique is that each recipe has a "
                   "meaning attached to it; every ingredient whether it is vegetable, meat, or spice holds"
                   " a meaning.The Chinese culture has a deep rooted affection for food and any celebration is incomplete"
                   " without food. What makes their food unique is that each recipe has a meaning attached to it; every ingredient whether it is vegetable, meat, or spice "
                   "holds a meaning.The Chinese culture has a deep rooted affection for food and any celebration is incomplete without food. What makes their food unique is "
                   "that each recipe has a meaning attached to it every ingredient whether it is vegetable, meat, or spice holds a meaning.The Chinese culture has a deep rooted "
                   "affection for food and any celebration is incomplete without food. What makes their food unique is that each recipe has a meaning attached to it; every ingredient "
                   "whether it is vegetable, meat, or spice holds a meaning.The Chinese culture has a deep rooted affection for food and any celebration is incomplete without food."
                   " What makes their food unique is that each recipe has a meaning attached to it; every ingredient whether it is vegetable, meat, or spice holds a meaning.The Chinese "
                   "culture has a deep rooted affection for food and any celebration is incomplete without food. What makes their food unique is that each recipe has a meaning attached to it every ingredient "
                   "whether it is vegetable, meat, or spice holds a meaning."),)
              ],
            ),
          ),


        ],
      ),
      bottomNavigationBar:   Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(left: Dimensions.width20*2.5,
              right: Dimensions.width20*2.5,
              top: Dimensions.heigth10,
              bottom: Dimensions.heigth10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.remove,Iconsize:Dimensions.icon24,color: Colors.white,backgroundcolor: AppColors.MainColor,),
                BigText(text: "\$120 "+" X "+" 0 ",color: AppColors.mainblackColor,size: Dimensions.font26,),
                AppIcon(icon: Icons.add,Iconsize:Dimensions.icon24,color: Colors.white,backgroundcolor: AppColors.MainColor,)
              ],
            ),
          ),
          Container(
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
                  child: Icon(Icons.favorite,color: AppColors.MainColor,),
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
        ],
      ),
    );
  }
}
