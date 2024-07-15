import 'package:ecommerceapp/utils/colors.dart';
import 'package:ecommerceapp/pages/home/food_page_body.dart';
import 'package:flutter/material.dart';

import '../../utils/dimensions.dart';
import '../../widgets/big_text.dart';
import '../../widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          child: Container(
            margin:  EdgeInsets.only(top: Dimensions.height45, bottom: Dimensions.height15),
            padding:  EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(
                      text: "India",
                      color: AppColors.mainColor,
                      size: Dimensions.size30,
                    ),
                    Row(
                      children:[ SmallText(
                        text: "Pune",
                        color: Colors.black,
                      ),const Icon(Icons.arrow_drop_down_rounded)]
                    )
                  ],
                ),
                Center(
                  child: Container(
                    width: Dimensions.width45,
                    height: Dimensions.width45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius15),
                      color: Colors.blue,
                    ),
                    child: const Icon(
                      Icons.search,
                      color: AppColors.mainColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Expanded(child: SingleChildScrollView(child: FoodPageBody()))
      ]),
    );
  }
}
