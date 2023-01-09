import 'package:flutter/material.dart';
import 'package:food_delivery/Widgets/SmallText.dart';
import 'package:food_delivery/utilities/Colors.dart';
import 'package:food_delivery/utilities/dimensions.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  const ExpandableText.ExpandableText({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firsthalftext;
  late String secondhalftext;

  bool hiddentext= true;


  double Textheight = Dimensions.screenHeight/5.63;

  @override
  void initState() {
    super.initState();
    if (widget.text.length>Textheight)
      {
        firsthalftext = widget.text.substring(0,Textheight.toInt());
        secondhalftext = widget.text.substring(Textheight.toInt()+1,widget.text.length);
      }else
        {
          firsthalftext = widget.text;
          secondhalftext = "";
        }

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondhalftext.isEmpty?SmallText(size:Dimensions.font16,color:AppColors.paracolor,text: firsthalftext):Column(
        children: [
          SmallText(size:Dimensions.font15,text: hiddentext?(firsthalftext+"..."):(firsthalftext+secondhalftext)),
          InkWell(
            onTap: (){
              setState((){
                 hiddentext=!hiddentext;

              });
            },
            child: Row(
              children: [
                Container(child: hiddentext?SmallText(size:Dimensions.font15,text: "show more",color: AppColors.MainColor,):SmallText(text: "show less",color: AppColors.MainColor,)),
                Container(child:hiddentext?Icon(Icons.keyboard_arrow_down,color: AppColors.MainColor,):Icon(Icons.keyboard_arrow_up,color: AppColors.MainColor,)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
