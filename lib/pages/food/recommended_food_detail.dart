import 'package:e_commerce_app/utils/colors.dart';
import 'package:e_commerce_app/utils/dimensions.dart';
import 'package:e_commerce_app/widgets/app_icon.dart';
import 'package:e_commerce_app/widgets/big_text.dart';
import 'package:e_commerce_app/widgets/expendable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: CustomScrollView(
        slivers: [
           SliverAppBar(
             automaticallyImplyLeading: false,
             toolbarHeight: 70,
             title: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 //page navigation
                 GestureDetector(
                 onTap: (){
                   //Get.toNamed(RoutesHelper.getInitial());
                 }, //icons
                  child: AppIcon(icon: Icons.clear)
               ),
                 AppIcon(icon: Icons.shopping_cart_outlined),
               ],
             ),

             bottom: PreferredSize(
                preferredSize: Size.fromHeight(20),
               child: Container(
               child:Center(child:BigText(size:Dimensions.font26, text:"Maxicon")),
                 width: double.maxFinite,
                //page k edges ka design
                padding: EdgeInsets.only(top:5, bottom:10),
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.only(
                       topLeft:Radius.circular(Dimensions.radius20),
                       topRight:Radius.circular(Dimensions.radius20),
                   ),
               ),
               ),
               ),
             pinned: true,
             backgroundColor: AppColors.singleColor,
             expandedHeight: 300,
             flexibleSpace: FlexibleSpaceBar(
                background: Image.asset("assets/image/Food01.png", fit: BoxFit.cover,),
                ),
             ),
          SliverToBoxAdapter(
            child: Column(
               children: [
                 Container(
                   child: ExpandableTextWidget(text:"Pizza is a dish of Italian and this is very common The term pizza was first recorded in the 10th century in a Latin manuscript from the Southern Italian town of Gaeta in Lazio, on the border with Campania. Modern pizza was invented in Naples, and the dish and its variants have since become popular in many countries.It has become one of the most popular foods in the world and a common fast food item in Europe, North America and Australasia; available at pizzerias (restaurants specializing in pizza), restaurants offering Mediterranean cuisine, via pizza delivery, and as street food. Various food companies sell ready-baked pizzas, which may be frozen, in grocery stores, to be reheated in a home oven.Foods similar to pizza have been made since the Neolithic Age. Records of people adding other ingredients to bread to make it more flavorful can be found throughout ancient history. In the 6th century BC, the Persian soldiers of the Achaemenid Empire during the rule of Darius the Great baked flatbreads with cheese and dates on top of their battle shields and the ancient Greeks supplemented their bread with oils, herbs, and cheese.An early reference to a pizza-like food occurs in the Aeneid, when Celaeno, queen of the Harpies, foretells that the Trojans would not find peace until they are forced by hunger to eat their tables (Book III). In Book VII, Aeneas and his men are served a meal that includes round cakes (like pita bread) topped with cooked vegetables. When they eat the bread, they realize that these are the prophesied by Celaeno.A popular contemporary legend holds that the archetypal pizza, pizza Margherita, was invented in 1889, when the Royal Palace of Capodimonte commissioned the Neapolitan pizzaiolo (pizza maker) Raffaele Esposito to create a pizza in honor of the visiting Queen Margherita. Of the three different pizzas he created, the Queen strongly preferred a pizza swathed in the colors of the Italian flag — red (tomato), green (basil), and white (mozzarella). Supposedly, this kind of pizza was then named after the Queen,although later research cast doubt on this legend. An official letter of recognition from the Queen's remains on display in Esposito's shop, now called the Pizzeria Brandi.Pizza was taken to the United States by Italian immigrants in the late nineteenth century and first appeared in areas where they concentrated. The country's first pizzeria, Lombardi's, opened in New York City in Following World War II, veterans returning from the Italian Campaign, who were introduced to Italy's native cuisine, proved a ready market for pizza in particular."
                   ),
                   margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20 ),
                 )
               ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                left:Dimensions.width20*2.5,
                 right:Dimensions.width20*2.5,
                  top:Dimensions.height10,
                   bottom:Dimensions.height10),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                AppIcon(iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.remove),
                // middle bar
                 BigText(text: "\$10 X  ",
                 color: AppColors.mainColor, size: Dimensions.font26,
                 ),
                AppIcon(iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.add),
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeightBar,
            padding:  EdgeInsets.only(top: Dimensions.height30,
                bottom: Dimensions.height30, left:Dimensions.width20 ,
                right: Dimensions.width20),
            decoration: BoxDecoration(
                color: AppColors.buttonBackgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius20 *2 ),
                  topRight: Radius.circular(Dimensions.radius20 *2),
                )
            ),
            // 2 child buttons
            child: Row (
              mainAxisAlignment:MainAxisAlignment.spaceBetween ,
              children: [
                Container (
                    padding: EdgeInsets.only(top:Dimensions.height20, bottom:Dimensions.height20 ,
                        left:Dimensions.width20 , right:Dimensions.width20 ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius20),
                        color: Colors.white
                    ),
                    child:Icon(
                      Icons.favorite, color: AppColors.mainColor,
                    ),
                ),
                Container(
                  padding: EdgeInsets.only(top:Dimensions.height20, bottom:Dimensions.height20 ,
                      left:Dimensions.width20 , right:Dimensions.width20 ),
                  child: BigText(text:"\$28 | Add  to cart", color: Colors.white,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: AppColors.mainColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
