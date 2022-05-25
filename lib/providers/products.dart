import 'package:flutter/material.dart';
import 'product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
        id: 'p1',
        title: 'MANTO CREWNECK GYM 2.0 BLACK',
        description:
            '100% cotton\n Screen printing\n Jacquard label on front\n Comfortable and adjusted fit',
        price: 49.00,
        imageUrl:
            'https://www.mantoshop.eu/eng_pm_MANTO-crewneck-GYM-2-0-black-2794_2.jpg'),
    Product(
        id: 'p2',
        title: 'MANTO T-SHIRT BJJ SEQUENCE WHITE',
        description:
            '100% cotton\n Screen printing\n Jacquard label on front\n Comfortable and adjusted fit',
        price: 24.00,
        imageUrl:
            'https://www.mantoshop.eu/eng_pl_MANTO-t-shirt-BJJ-SEQUENCE-white-2797_2.jpg'),
    Product(
        id: 'p3',
        title: 'MANTO T-SHIRT HANDS BLACK',
        description:
            '100% cotton\n Screen printing\n Jacquard label on front\n Comfortable and adjusted fit',
        price: 24.00,
        imageUrl:
            'https://mantoshop.eu/eng_pl_MANTO-t-shirt-HANDS-black-2837_3.jpg'),
    Product(
        id: 'p4',
        title: 'MANTO X JANEK T-SHIRT BIG LOGO BLACK',
        description:
            'MANTO x Jan Błachowicz\n100% cotton\n Screen printing\n Jacquard label on front\n Comfortable and adjusted fit',
        price: 14.29,
        imageUrl:
            'https://www.mantoshop.eu/eng_pl_MANTO-x-JANEK-t-shirt-BIG-LOGO-black-2570_2.jpg'),
  ];

  var _showFavoritesOnly = false;

  List<Product> get items {
    // if (_showFavoritesOnly) {
    //   return _items.where((prod) => prod.isFavorite).toList();
    // }
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((product) => product.isFavorite).toList();
  }

  Product findById(String id) {
    return _items.firstWhere((product) => product.id == id);
  }

  // void showFavoritesOnly() {
  //   _showFavoritesOnly = true;
  //   notifyListeners();
  // }

  // void showAll() {
  //   _showFavoritesOnly = false;
  //   notifyListeners();
  // }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }
}
