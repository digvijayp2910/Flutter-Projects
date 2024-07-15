import 'package:ecommerceapp/models/cart_model.dart';
import 'package:ecommerceapp/models/products_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/repository/cart_repo.dart';
import '../utils/colors.dart';

class CartController extends GetxController {
  CartController({required this.cartRepo});

  final CartRepo cartRepo;

  Map<int, CartModel> _items = {};

  Map<int, CartModel> get items => _items;

  int get totalItems {
    var totalItems = 0;
    _items.forEach((key, value) {
      totalItems += value.quantity!;
    });
    return totalItems;
  }


  List<CartModel> get getItems{
    return items.entries.map((e) =>  e.value).toList() ;
  }

  void addItem(ProductModel product, int quantity) {
    var totalQuantity = 0;
    if (_items.containsKey(product.id)) {
      _items.update(product.id!, (value) {
        totalQuantity = value.quantity! + quantity;
        return CartModel(
            id: value.id,
            name: value.name,
            price: value.price,
            img: value.img,
            quantity: value.quantity! + quantity,
            time: DateTime.now().toString(),
            isExist: true);
      });
      if (totalQuantity <= 0) {
        _items.remove(product.id);
      }
    } else {
      _items.putIfAbsent(product.id!, () {
        return CartModel(
            id: product.id,
            name: product.name,
            price: product.price,
            img: product.img,
            quantity: quantity,
            time: DateTime.now().toString(),
            isExist: true);
      });
    }

    _items.forEach((key, value) {
      print(value.quantity);
    });
  }

  bool existInCart(ProductModel product) {
    if (_items.containsKey(product.id)) {
      return true;
    }
    return false;
  }

  int getQuantity(ProductModel product) {
    var quantity = 0;
    if (_items.containsKey(product.id)) {
      _items.forEach((key, value) {
        if (key == product.id) {
          quantity = value.quantity!;
        }
      });
    }
    return quantity;
  }
}
