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


//dynamic width padding and margin
   static double width10 = screenHeight /80.2;
  static double width15 = screenHeight /53.5;
  static double width20 = screenHeight /40.1;
  static double width30 = screenHeight /26.76;

  static double font20 = screenHeight/ 40.1;
static double radius20 = screenHeight/40.1;
  static double radius30 = screenHeight/26.76;


}