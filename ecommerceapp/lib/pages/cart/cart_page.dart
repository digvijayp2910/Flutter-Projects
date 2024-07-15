import 'package:ecommerceapp/controllers/cart_controller.dart';
import 'package:ecommerceapp/controllers/popular_product_controller.dart';
import 'package:ecommerceapp/routes/route_helper.dart';
import 'package:ecommerceapp/utils/app_constants.dart';
import 'package:ecommerceapp/utils/colors.dart';
import 'package:ecommerceapp/utils/dimensions.dart';
import 'package:ecommerceapp/widgets/appicon.dart';
import 'package:ecommerceapp/widgets/big_text.dart';
import 'package:ecommerceapp/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: Dimensions.height20 * 3,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(onTap: (){ Get.back();},
                    child: AppIcon(
                      icon: Icons.arrow_back_ios,
                      size: Dimensions.iconSize40,
                      iconColor: Colors.white,
                      backgroundColor: AppColors.mainColor,
                      iconSize: Dimensions.iconSize24,
                    ),
                  ),
                  SizedBox(
                    width: Dimensions.width20 * 5,
                  ),
                  GestureDetector(onTap: (){ Get.toNamed(RouteHelper.initial);},
                    child: AppIcon(
                      icon: Icons.home_outlined,
                      size: Dimensions.iconSize40,
                      iconColor: Colors.white,
                      backgroundColor: AppColors.mainColor,
                      iconSize: Dimensions.iconSize24,
                    ),
                  ),
                  AppIcon(
                    icon: Icons.shopping_cart_outlined,
                    size: Dimensions.iconSize40,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    iconSize: Dimensions.iconSize24,
                  )
                ],
              )),
          Positioned(
              top: Dimensions.height20 * 5,
              left: Dimensions.width20,
              right: Dimensions.width20,
              bottom: 0,
              child: Container(
                  margin: EdgeInsets.only(top: Dimensions.height10),
                  child: MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                      child:  GetBuilder<CartController>(builder: (cartController){ return ListView.builder(
                          itemCount: cartController.getItems.length,
                          itemBuilder: (_, index) {
                            return Container(
                              width: double.maxFinite,
                              height: Dimensions.height20 * 5,
                              child: Row(
                                children: [
                                  Container(
                                    width: Dimensions.height20 * 5,
                                    height: Dimensions.height20 * 5,
                                    margin: EdgeInsets.only(
                                        bottom: Dimensions.height10),
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                          image: NetworkImage(AppConstants.BASE_URL+AppConstants.UPLOAD_URL+"${cartController.getItems[index].img}"),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                  SizedBox(
                                    width: Dimensions.width10,
                                  ),
                                  Expanded(
                                      child: Container(
                                        height: Dimensions.height20 * 5,
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            BigText(text: cartController.getItems[index].name!.toString()  ),
                                            SmallText(text: "Spicy"),
                                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                BigText(
                                                  text: "\$ ${cartController.getItems[index].price.toString()}",
                                                  color: Colors.redAccent,
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(
                                                      top: Dimensions.height10,
                                                      left: Dimensions.width10,
                                                      right: Dimensions.width10,
                                                      bottom: Dimensions.height10),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius.circular(Dimensions.radius20),
                                                      color: Colors.white),
                                                  child: Row(
                                                    children: [
                                                      GestureDetector(
                                                        child: const Icon(
                                                          Icons.remove,
                                                          color: AppColors.signColor,
                                                        ),
                                                        onTap: () {
                                                          // popularProduct.setQuantity(false);
                                                        },
                                                      ),
                                                      SizedBox(
                                                        width: Dimensions.width10,
                                                      ),
                                                      BigText(text: Get.find<PopularProductController>().getItems[index].quantity.toString()),
                                                      SizedBox(
                                                        width: Dimensions.width10,
                                                      ),
                                                      GestureDetector(
                                                        child: const Icon(
                                                          Icons.add,
                                                          color: AppColors.signColor,
                                                        ),
                                                        onTap: () {
                                                          // popularProduct.setQuantity(true);
                                                        },
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ))
                                ],
                              ),
                            );
                          }); },),)
                  ))
        ],
      ),
    );
  }
}
