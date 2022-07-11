import 'package:e_commerce_app/pages/food/popular_food_detail.dart';
import 'package:e_commerce_app/pages/food/recommended_food_detail.dart';
import 'package:e_commerce_app/pages/home/main_page_food.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class RoutesHelper {
  static const String initial = "/";
  static const String popularFood = "/popular-food";
  static const String recommendedFood = "/recommended-food";

  static get pageId => null;

  static String getInitial() => '$initial';

  static String getPopularFood(int pageId) => '$popularFood$pageId = $pageId';
  static String getRecommendedFood(int pageId) => '$recommendedFood$pageId = $pageId';


  static List<GetPage> routes = [
    GetPage(name: initial, page: () => MainFoodPage()),
    //calling popularFood cause he's calling "/pop-food,

    //GetPage(name: popularFood, page: () {
    //  var pageId = Get.parameters['pageId'];
      //return PopularFoodDetail(pageId: int.parse(pageId!));
   // },
      //transition: Transition.fadeIn,
    //),
   // GetPage(name: recommendedFood, page: () {
      //print("recommended food get called");
      //return RecommendedFoodDetail(pageId: int.parse(pageId!));
    //},
     // transition: Transition.fadeIn,
   // ),

  ];



}