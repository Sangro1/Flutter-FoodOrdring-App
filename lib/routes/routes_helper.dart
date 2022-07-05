import 'package:e_commerce_app/pages/food/popular_food_detail.dart';
import 'package:e_commerce_app/pages/home/main_page_food.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class RoutesHelper{

   static const String initial = "/";
   static const String popularFood ="/popular-food";

   static List<GetPage> routes =[
      GetPage(name: "/", page:()=>  MainFoodPage()),
      //calling popularFood cause he's calling "/pop-food,
      GetPage(name: popularFood  , page:() => PopularFoodDetail()),
   ];

}