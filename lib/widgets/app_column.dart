import 'package:e_commerce_app/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'big_text.dart';
import 'icon_and_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        BigText(text: text, size: Dimensions.font26),//custom text
        SizedBox(height: Dimensions.height10),

        //comment section
        Row(
          children:[
            Wrap(
              children:List.generate(5,(index) => Icon(Icons.star,
                  color: AppColors.mainColor,size: 15),),
            ),
            SizedBox(width: 15,),
            SmallText(text: "4.5"),

            SizedBox(width: 15,),
            SmallText(text: "1789" ),

            SizedBox(width: 15,),
            SmallText(text: "comments"),
          ],
        ),

        SizedBox(height: Dimensions.height10),
        //time and distance
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(icon: Icons.circle_sharp,
                text: "Normal",
                iconColor: AppColors.iconColor1),

            IconAndTextWidget(icon: Icons.location_on,
                text: "37km",
                iconColor: AppColors.mainColor),

            IconAndTextWidget(icon: Icons.access_time_rounded,
                text: "25min",
                iconColor: AppColors.iconColor2),
          ],
        )
      ],
    );
  }
}
