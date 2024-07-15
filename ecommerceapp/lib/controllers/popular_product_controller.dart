import 'dart:ui';

import 'package:ecommerceapp/controllers/cart_controller.dart';
import 'package:ecommerceapp/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/repository/popular_product_repo.dart';
import '../models/cart_model.dart';
import '../models/products_model.dart';

class PopularProductController extends GetxController {
  PopularProductController({required this.popularProductRepo});

  final PopularProductRepo popularProductRepo;
  late CartController _cart;

  List<dynamic> _popularProductList = [];

  List<dynamic> get popularProductList => _popularProductList;

  bool _isLoaded = false;

  bool get isLoaded => _isLoaded;

  int _quantity = 0;

  int get quantity => _quantity;

  int _inCartItems = 0;

  int get inCartItems => _inCartItems + _quantity;

  int get totalItems => _cart.totalItems!;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      _popularProductList = [];
      _popularProductList
          .addAll(Product.fromJson(response.body).products as Iterable);
      print(_popularProductList);
      _isLoaded = true;
      update();
    } else {
      print("Not got popular products");
    }
  }

  List<CartModel> get getItems{
    return _cart.getItems ;
  }

  void setQuantity(bool isIncrement) {
    if (isIncrement) {
      _quantity = checkQuantity(_quantity += 1);
      print("Increased $_quantity");
    } else {
      _quantity = checkQuantity(_quantity -= 1);
      print("Decreased $_quantity");
    }
    update();
  }

  int checkQuantity(int quantity) {
    if ((_inCartItems + quantity) > 20) {
      Get.closeAllSnackbars();
      Get.snackbar("Item Count", "You can't increase more !",
          backgroundColor: AppColors.mainColor, colorText: Colors.white);
      return 20;
    } else if ((_inCartItems + quantity) < 0) {
      Get.closeAllSnackbars();
      Get.snackbar("Item Count", "You can't reduce more !",
          backgroundColor: AppColors.mainColor, colorText: Colors.white);
      if(_inCartItems>0){
        _quantity=  -_inCartItems;
        return _quantity;
      }
      return 0;
    } else {
      return quantity;
    }
  }

  void initProduct(ProductModel product, CartController cart) {
    _quantity = 0;
    _inCartItems = 0;
    _cart = cart;
    var exist = false;
    exist = _cart.existInCart(product!);
    print("Exists or not " + exist.toString());
    if (exist) {
      _inCartItems = _cart.getQuantity(product);
    }
    // update();
  }

  void addItem(ProductModel product) {
    if (_quantity == 0) {
      Get.closeAllSnackbars();
      Get.snackbar("No Item Selected", "add atleast one item",
          backgroundColor: AppColors.mainColor, colorText: Colors.white);
    } else {
      _cart.addItem(product, quantity);
      _quantity = 0;
      _inCartItems = _cart.getQuantity(product);
      _cart.items.forEach((key, value) {
        print("this is of id " +
            value.id.toString() +
            " the quantity is " +
            value.quantity.toString());
      });
    }
    update();
  }
}
