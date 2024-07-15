import 'package:ecommerceapp/pages/food/popular_food_detail.dart';
import 'package:ecommerceapp/pages/food/recommended_food-details.dart';
import 'package:ecommerceapp/pages/home/main_food_page.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../pages/cart/cart_page.dart';

class RouteHelper {
  static const String initial = '/';
  static const String popularFood = '/popular-food';
  static const String recommendedFood = '/recommended-food';
  static const String cart = '/cart';

  static String getPopularFood(int pageId) => "$popularFood?pageId=$pageId";

  static String getInitial() => "$initial";

  static String getRecommendedFood(int pageId) => "$recommendedFood?pageId=$pageId";

  static String getCart()=> "$cart";

  static List<GetPage> routes = [
    GetPage(name: "/", page: () => MainFoodPage()),
    GetPage(
        name: popularFood,
        page: () {
          var pageId = Get.parameters['pageId'];
          return PopularFoodDetail(pageId: int.parse(pageId!));
        },
        transition: Transition.fadeIn),
    GetPage(
        name: recommendedFood,
        page: () {
          var index = Get.parameters['pageId'];
          return  RecommendedFoodDetail(index: int.parse(index!));},
        transition: Transition.fadeIn),
    GetPage(name: cart, page: (){ return CartPage();})
  ];
}
