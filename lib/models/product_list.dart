import 'package:flutter/material.dart';
import 'package:shop/data/dummy_data.dart';
import 'package:shop/models/products.dart';

class ProductList with ChangeNotifier {
  // ignore: prefer_final_fields
  List<Product> _items = dummyProducts;

  List<Product> get items => _items;

  void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
  }
}
