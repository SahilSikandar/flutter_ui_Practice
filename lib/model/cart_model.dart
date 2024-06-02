import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ['Avocado', '4.00', 'lib/images/avocado.png', Colors.green],
    ['Banana', '2.00', 'lib/images/banana.png', Colors.yellow],
    ['Chicken', '10.00', 'lib/images/chicken.png', Colors.brown],
    ['Water', '5.00', 'lib/images/water.png', Colors.blue],
  ];
  get shopItems => [..._shopItems];
  List _cart = [];
  get cart => _cart;

  void addItems(int index) {
    _cart.add(_shopItems[index]);
    notifyListeners();
  }

  void removeItems(int index) {
    _cart.removeAt(index);
    notifyListeners();
  }

  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cart.length; i++) {
      totalPrice += double.parse(_cart[i][1]);
    }
    notifyListeners();
    return totalPrice.toStringAsFixed(2);
  }
}
