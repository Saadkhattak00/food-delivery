import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/Widgets/App_Column.dart';
import 'package:food_delivery/Widgets/BigText.dart';
import 'package:food_delivery/Widgets/IconAndText.dart';
import 'package:food_delivery/Widgets/SmallText.dart';
import 'package:food_delivery/utilities/Colors.dart';
import 'package:food_delivery/utilities/dimensions.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  double _scaleFactor= 0.8;
  double _height = Dimensions.pageViewContainer;
  @override
  void initState(){
    super.initState();
    pageController.addListener(() {
      setState((){
        _currPageValue = pageController.page!;
      });
      });
    }
    @override
    void dispose(){
    pageController.dispose();
    }

  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: Dimensions.pageView,
          child: PageView.builder(
              itemCount: 5,

              controller: pageController,
              itemBuilder: (context,position){
                return _BuildItems(position);
              }
          ),
        ),
    DotsIndicator(
    dotsCount: 5,
    position: _currPageValue,
    decorator: DotsDecorator(
     activeColor: AppColors.MainColor,
    size: const Size.square(9.0),
    activeSize: const Size(18.0, 9.0),
    activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0)),
    ),),
        SizedBox(height: Dimensions.heigth30,),
        Container(
          margin: EdgeInsets.only(left:Dimensions.width30),
         child: Row(
           crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: "Popular"),
              SizedBox(width: Dimensions.width10,),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: BigText(text: ".",color: Colors.black26,),
              ),
              SizedBox(width: Dimensions.width10,),
              Container(
                margin: const EdgeInsets.only(bottom: 2),
                child: SmallText(text: "Food pairing",),)
            ],
          )
        ),
        SizedBox(height: Dimensions.heigth20,),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context,index){

          return Container(
            margin: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20,bottom: Dimensions.heigth10),
            child: Row(
              children: [
                // Image Section
                Container(
                  width:Dimensions.listimagview,
                  height: Dimensions.listimagview,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("images/testimage.webp"),
                    )

                  ),
                ),
                // Text Section
                Expanded(
                  child: Container(
                    height: Dimensions.listview,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(Dimensions.radius20),bottomRight: Radius.circular(Dimensions.radius20)),
                      color: Colors.white
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BigText(text: "Nutirtious fruit meal in china"),
                          SizedBox(height: Dimensions.heigth10,),
                          SmallText(text: "With chinese characteristic"),
                          SizedBox(height: Dimensions.heigth10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              IconAndText(icon: Icons.circle_sharp, iconColor: AppColors.iconColor1, text: "Normal"),

                              IconAndText(icon: Icons.location_on, iconColor: AppColors.MainColor, text: "1.2km"),
                              IconAndText(icon: Icons.access_time, iconColor: AppColors.iconColor2, text: "32min"),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        })
      ],
    );
  }

  Widget _BuildItems(int index){
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currPageValue.floor())
    {
      var currScale = 1-(_currPageValue-index)*(1-_scaleFactor);
      var currtrans = _height * (1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currtrans, 0);
    }else if (index == _currPageValue.floor()+1)
    {
      var currScale = _scaleFactor+(_currPageValue-index+1)*(1-_scaleFactor);
      var currtrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currtrans, 0);
    }else if (index == _currPageValue.floor()-1)
    {
      var currScale = 1-(_currPageValue-index)*(1-_scaleFactor);
      var currtrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currtrans, 0);
    }else
      {
        var currScale = 0.8;
        matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, _height*(1-_scaleFactor)/2, 1);
      }
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
        Container(
        height: Dimensions.pageViewContainer,
        margin:  EdgeInsets.only(left: Dimensions.width10,right: Dimensions.width10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.heigth30),
            color: index.isEven?const Color(0xFF232a4c):const Color(0xFF12bf32),
          image: const DecorationImage(
            fit: BoxFit.cover,
            image:  AssetImage("images/testimage.webp")
          )
        ),
      ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageViewTextContainer,
              margin: EdgeInsets.only(left: Dimensions.width30 ,right: Dimensions.width30,bottom: Dimensions.heigth30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFFe8e8e8),
                    blurRadius: 5.0,
                    offset: Offset(0,5),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5,0),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(5,0),
                  ),
                ]
              ),
              child: Container(
                padding:  EdgeInsets.only(top: Dimensions.heigth15,left: Dimensions.width15,right: Dimensions.width15),
                child: AppColumn(text: "Chinese Side",),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
