import 'package:e_commerce_app/utils/colors.dart';
import 'package:e_commerce_app/utils/dimensions.dart';
import 'package:e_commerce_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({Key? key,required this.text}) : super(key: key);

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
 //for text scrolling
  late String firstHalf;
   late String secondHalf;
  //once you declare a varible late,
  // you have to initilize somehow  it before you use it either its empty or whatever it is.

  bool hiddenText = true;
  double textHeight = Dimensions.screenHeight/5.10;

  //i love flutter laravel nd golang 30 50 ,
  // so first 30 go_into the firstHalf and 50 going to secondHalf
  @override
  void initState(){
    super.initState();
    if(widget.text.length>textHeight){
      firstHalf = widget.text.substring(0,textHeight.toInt());
      secondHalf = widget.text.substring(textHeight.toInt()+1,widget.text.length);
    }else{
      firstHalf = widget.text;
      secondHalf = "";//empty not null
    }
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty?SmallText(color:AppColors.paraColor,size:Dimensions.font16, text:firstHalf):Column(
        children:[
          SmallText(height:1.8, color:AppColors.paraColor, size:Dimensions.font16, text:hiddenText?(firstHalf+"..."):
         (firstHalf+secondHalf)),
          //Button
          InkWell(
            onTap:(){
                    setState((){
                      hiddenText=!hiddenText;
                    });
            },
            child: Row(
              children: [
                SmallText(text:"Show more", color: AppColors.mainColor),
                Icon(hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up ,
                  color:AppColors.mainColor,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
