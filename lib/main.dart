import 'package:e_commerce_app/pages/home/main_page_food.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/home/food_page_body.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await dep.init();
  runApp(const MyApp(
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    //Get.find<PopularProductController>().getPopularProductList();
    //Get.find<RecommendedProductController>().getRecommendedProductList();

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

       //calling the home page
      home: MainFoodPage(),

    );
  }
}
