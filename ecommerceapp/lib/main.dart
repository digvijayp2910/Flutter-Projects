import 'package:ecommerceapp/controllers/popular_product_controller.dart';
import 'package:ecommerceapp/controllers/recommended_product_controller.dart';
import 'package:ecommerceapp/pages/cart/cart_page.dart';
import 'package:ecommerceapp/pages/food/popular_food_detail.dart';
import 'package:ecommerceapp/pages/food/recommended_food-details.dart';
import 'package:ecommerceapp/pages/home/main_food_page.dart';
import 'package:ecommerceapp/routes/route_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:ecommerceapp/helper/dependencies.dart' as dep;

Future<void > main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    Get.find<RecommendedProductController>().getRecommendedProductList();
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const MainFoodPage(),
      initialRoute: RouteHelper.initial,
      getPages: RouteHelper.routes,
    );
  }
}
