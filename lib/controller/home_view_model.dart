import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/view/screens/cart_screen.dart';
import 'package:shop_app/view/screens/categories_screen.dart';

class HomeViewModel extends GetxController {
  int _navigatorValue = 0;

   int? categoryIdnum;

  Widget _currentScreen = CategoriesScreen();

  get currentScreen => _currentScreen;

  get navigatorValue => _navigatorValue;
  void changeSelectedValue(int selectedValue) {
    _navigatorValue = selectedValue;

    switch (selectedValue) {
      case 0:
        {
          _currentScreen = CategoriesScreen();
          break;
        }

      case 3:
        {
          _currentScreen = CartScreen();
          break;
        }
    }
    update();
  }
}
