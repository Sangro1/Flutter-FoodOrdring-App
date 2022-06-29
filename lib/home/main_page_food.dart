import 'package:e_commerce_app/home/food_page_body.dart';
import 'package:e_commerce_app/utils/colors.dart';
import 'package:e_commerce_app/utils/dimensions.dart';
import 'package:e_commerce_app/widgets/big_text.dart';
import 'package:e_commerce_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    print("current height is "+ MediaQuery.of(context).size.height.toString());

    return Scaffold(
      body: Column(
        children: [
          //search bar upper layout activity (showing the header)
          Container(
            child: Container(
              margin: EdgeInsets.only(top: 65, bottom: 15),
              padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text:"Bangladesh",color: AppColors.mainColor,size: 20),
                     Row(
                       children: [
                         SmallText(text:"Narsingdi",color:Colors.black54),
                         Icon(Icons.arrow_drop_down_rounded),

                       ],
                     )
                    ],
                  ),
                   Container(
                    width: 45,
                    height: 45,
                    child: Icon(Icons.search, color: Colors.white),
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.mainColor,
                    ),
                  )
                ],
              ),
            ),

          ),
          // call that food page (showing the body)
          FoodPageBody(),
        ],
      )
    );
  }
}
