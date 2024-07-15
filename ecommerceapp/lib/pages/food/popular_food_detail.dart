import 'package:ecommerceapp/controllers/cart_controller.dart';
import 'package:ecommerceapp/controllers/popular_product_controller.dart';
import 'package:ecommerceapp/pages/cart/cart_page.dart';
import 'package:ecommerceapp/pages/home/food_page_body.dart';
import 'package:ecommerceapp/routes/route_helper.dart';
import 'package:ecommerceapp/utils/colors.dart';
import 'package:ecommerceapp/utils/dimensions.dart';
import 'package:ecommerceapp/widgets/appicon.dart';
import 'package:ecommerceapp/widgets/expandebale_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/app_constants.dart';
import '../../widgets/app_column.dart';
import '../../widgets/big_text.dart';
import '../../widgets/small_text.dart';
import '../home/main_food_page.dart';

class PopularFoodDetail extends StatelessWidget {
  PopularFoodDetail({super.key, required this.pageId});

  int pageId;

  @override
  Widget build(BuildContext context) {
    var product =
        Get.find<PopularProductController>().popularProductList[pageId];
    Get.find<PopularProductController>()
        .initProduct(product, Get.find<CartController>());
    print('Print Id is $pageId');
    print(product);
    return Scaffold(
        body: Stack(children: [
          //background image
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popularFoodImgSize,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "${AppConstants.BASE_URL}${AppConstants.UPLOAD_URL}${product.img!}"),
                        fit: BoxFit.cover)),
              )),
          //icon widgets
          Positioned(
              top: Dimensions.height45,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),

                  GetBuilder<PopularProductController>(builder: (controller) {
                    return Stack(
                      children: [
                        GestureDetector(
                            onTap: () {
                              if(controller.totalItems>=1){
                                Get.to(() => const CartPage());
                              }
                            },
                            child: AppIcon(icon: Icons.shopping_cart_outlined)),
                        controller.totalItems >= 1
                            ? Positioned(
                                top: 0,
                                right: 0,
                                child: GestureDetector(
                                  onTap: () {
                                    Get.to(() => const CartPage());
                                  },
                                  child: const AppIcon(
                                    icon: Icons.circle,
                                    iconColor: AppColors.mainColor,
                                    size: 20,
                                  ),
                                ))
                            : Container(),
                        controller.totalItems >= 1
                            ? Positioned(
                                top: 5,
                                right: 5,
                                child: GestureDetector(
                                  onTap: () {
                                    Get.to(() => const CartPage());
                                  },
                                  child: SmallText(
                                    text: controller.totalItems.toString(),
                                    size: 10,
                                    color: Colors.black,
                                  ),
                                ))
                            : Container(),
                      ],
                    );
                  }),
                ],
              )),
          //introduction of food
          Positioned(
              left: 0,
              right: 0,
              top: Dimensions.popularFoodImgSize - 20,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                    top: Dimensions.height20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(Dimensions.radius20),
                        topLeft: Radius.circular(Dimensions.radius20)),
                    color: Colors.white),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppColumn(text: product.name, productModel: product),
                      SizedBox(
                        height: Dimensions.height20,
                      ),
                      BigText(text: "Introduce"),
                      //expandable text widget
                      Expanded(
                          child: SingleChildScrollView(
                              child: ExpandableTextWidget(
                                  heightMultiplyer: 3,
                                  text: product.description)))
                    ]),
              )),
        ]),
        bottomNavigationBar: GetBuilder<PopularProductController>(
          builder: (popularProduct) {
            return Container(
              height: Dimensions.bottomNavigationHeight120,
              padding: EdgeInsets.only(
                  top: Dimensions.height20,
                  left: Dimensions.height20,
                  right: Dimensions.width20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius20 * 2),
                      topLeft: Radius.circular(Dimensions.radius20 * 2)),
                  color: AppColors.buttonBackgorundColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        top: Dimensions.height20,
                        left: Dimensions.width10,
                        right: Dimensions.width10,
                        bottom: Dimensions.height20),
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
                            popularProduct.setQuantity(false);
                          },
                        ),
                        SizedBox(
                          width: Dimensions.width10,
                        ),
                        BigText(text: popularProduct.inCartItems.toString()),
                        SizedBox(
                          width: Dimensions.width10,
                        ),
                        GestureDetector(
                          child: const Icon(
                            Icons.add,
                            color: AppColors.signColor,
                          ),
                          onTap: () {
                            popularProduct.setQuantity(true);
                          },
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      popularProduct.addItem(product);
                    },
                    child: Container(
                      padding: EdgeInsets.only(
                          top: Dimensions.height20,
                          left: Dimensions.height10,
                          right: Dimensions.width10,
                          bottom: Dimensions.height20),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius20),
                          color: AppColors.mainColor),
                      child: BigText(
                        text: "\$ ${product.price!} | Add to cart",
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ));
  }
}
