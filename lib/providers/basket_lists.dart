import 'package:flutter/material.dart';
import 'package:fruitzshop/Models/OrderProduct.dart';

class BasketLists extends ChangeNotifier {
  List<OrderProduct> baskets = [];

  addProduct(OrderProduct product) {
    baskets.add(product);
    notifyListeners();
  }

  removeProduct(OrderProduct product) {
    baskets.remove(product);
    notifyListeners();
  }
}
