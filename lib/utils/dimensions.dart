import 'package:get/get.dart';


class Dimensions{

  static double screenHeight = Get.context!.height;
  //access height property
  static double screenWidth = Get.context!.width;
  static double pageView  = screenHeight/ 2.64 ;

  //802/22 = 3.64;
  static double pageViewContainer = screenHeight/ 3.64 ;
  //802/120 = 6.68;
  static double pageViewTextContainer = screenHeight/ 6.68 ;
  //dynamic height padding and margin
  //802.88/10
static double height10 = screenHeight /80.2;
static double height15 = screenHeight /53.5;
static double height20 = screenHeight /40.1;
  static double height30 = screenHeight /26.76;
  static double height45 = screenHeight / 17.84;



//dynamic width padding and margin
   static double width10 = screenHeight /80.2;
  static double width15 = screenHeight /53.5;
  static double width20 = screenHeight /40.1;
  static double width30 = screenHeight /26.76;


  static double font16 = screenHeight/ 50.12;
  static double font20 = screenHeight/ 40.1;
  static double font26 = screenHeight/ 31.57  ;

  //radius
  static double radius15  = screenHeight/53.5;
  static double radius20 = screenHeight/40.1;
  static double radius30 = screenHeight/26.76;

  //iconSixe
  static double iconSize24 = screenHeight/33.41;
  static double iconSize16 = screenHeight/52.75;

   //List view size 360/120 pixel5
   static double listViewImageSize = screenWidth/3 ;
   //360/100
   static double listViewTextContSize = screenWidth/3.6;

   //popular food
  //height 350
  static double popularFoodImageSize = screenHeight/2.41;
  //dimension bottom height
    static double bottomHeightBar = screenHeight / 6.68;


}