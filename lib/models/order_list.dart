import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shop/models/cart.dart';

import 'order.dart';

class OrderList with ChangeNotifier {
  // ignore: prefer_final_fields
  List<Order> _items = [];

  List<Order> get items {
    return [..._items];
  }

  int get itemsCount {
    return items.length;
  }

  void addOrder(Cart cart) {
    _items.insert(
      0,
      Order(
        id: Random().nextDouble().toString(),
        total: cart.totalAmount,
        products: cart.items.values.toList(),
        date: DateTime.now(),
      ),
    );
    notifyListeners();
  }
}
