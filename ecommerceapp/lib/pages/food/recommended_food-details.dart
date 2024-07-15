import 'package:ecommerceapp/controllers/cart_controller.dart';
import 'package:ecommerceapp/controllers/popular_product_controller.dart';
import 'package:ecommerceapp/controllers/recommended_product_controller.dart';
import 'package:ecommerceapp/routes/route_helper.dart';
import 'package:ecommerceapp/utils/app_constants.dart';
import 'package:ecommerceapp/utils/colors.dart';
import 'package:ecommerceapp/utils/dimensions.dart';
import 'package:ecommerceapp/widgets/appicon.dart';
import 'package:ecommerceapp/widgets/big_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/expandebale_text_widget.dart';
import '../../widgets/small_text.dart';
import '../cart/cart_page.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    var product =
        Get.find<RecommendedProductController>().recommendedProductList[index];
    Get.find<PopularProductController>()
        .initProduct(product, Get.find<CartController>());
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              expandedHeight: 300,
              toolbarHeight: 75,
              backgroundColor: AppColors.yellowColor,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.toNamed(RouteHelper.getInitial());
                      },
                      child: AppIcon(icon: Icons.clear)),
                  GetBuilder<PopularProductController>(builder: (controller) {
                    return Stack(
                      children: [
                        AppIcon(icon: Icons.shopping_cart_outlined),
                        controller.totalItems >= 1
                            ?  Positioned(
                            top: 0,
                            right: 0,
                            child: GestureDetector(onTap: (){Get.to(()=>const CartPage()); },
                              child: Icon(
                                Icons.circle,
                                color: AppColors.mainColor,
                                size: 20,
                              ),
                            ))
                            : Container(),
                        controller.totalItems >= 1
                            ?Positioned(
                            top: 5,
                            right: 7,
                            child: GestureDetector(onTap: (){Get.to(()=>const CartPage()); },
                              child: SmallText(
                                text: controller.totalItems.toString(),size: 10,color: Colors.black,
                              ),
                            )):Container(),
                      ],
                    );
                  }),
                ],
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(15),
                child: Container(
                  // margin: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
                  padding: const EdgeInsets.only(top: 5, bottom: 10),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(Dimensions.radius20),
                          topRight: Radius.circular(Dimensions.radius20)),
                      color: Colors.white),
                  child: Center(child: BigText(text: product.name)),
                ),
              ),
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  "${AppConstants.BASE_URL}${AppConstants.UPLOAD_URL}${product.img}",
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(children: [
                Container(
                    margin: EdgeInsets.only(
                        left: Dimensions.width20, right: Dimensions.width20),
                    child: ExpandableTextWidget(
                        heightMultiplyer: 1, text: product.description)),
              ]),
            )
          ],
        ),
        bottomNavigationBar:
            GetBuilder<PopularProductController>(builder: (controller) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                    top: Dimensions.height10,
                    bottom: Dimensions.height10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        controller.setQuantity(false);
                      },
                      child: AppIcon(
                          icon: Icons.remove,
                          backgroundColor: AppColors.mainColor,
                          iconColor: Colors.white),
                    ),
                    BigText(
                      text: "\$ ${product.price!} X ${controller.inCartItems}",
                      color: AppColors.mainBlackColor,
                      size: Dimensions.font26,
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.setQuantity(true);
                      },
                      child: AppIcon(
                          icon: Icons.add,
                          backgroundColor: AppColors.mainColor,
                          iconColor: Colors.white),
                    ),
                  ],
                ),
              ),
              Container(
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
                          left: Dimensions.height20,
                          right: Dimensions.width20,
                          bottom: Dimensions.height20),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius20),
                          color: Colors.white),
                      child: Icon(
                        Icons.favorite,
                        color: AppColors.mainColor,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.addItem(product);
                      },
                      child: Container(
                        padding: EdgeInsets.only(
                            top: Dimensions.height20,
                            left: Dimensions.height20,
                            right: Dimensions.width20,
                            bottom: Dimensions.height20),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius20),
                            color: AppColors.mainColor),
                        child: BigText(
                          text: " \$ ${product.price!} | Add to cart",
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          );
        }));
  }
}
