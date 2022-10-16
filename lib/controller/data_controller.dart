import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shop_app/model/shop_model.dart';

class DataController extends GetxController {
  ShopModel? shopModel;
  var isDataLoading = false.obs;
  List<Categories>? categoris;
  List<Data>? dataList;
  List<Data> dl = [];

  var categoryId;

  @override
  Future<void> onInit() async {
    super.onInit();
    getCategory();
  }

  @override
  Future<void> onReady() async {
    super.onReady();
    // getCategory();
    // getCategoryListItem();
  }

  @override
  void onClose() {}

  Future<void> getCategory() async {
    try {
      isDataLoading(true);
      final String response =
          await rootBundle.loadString('assets/shop_item.json');
      final data = await json.decode(response);
      shopModel = ShopModel.fromJson(data);
      categoris = shopModel!.categories;
      for (int i = 0; i < categoris!.length; i++) {
        categoryId = categoris![i].categoryId;
        dataList = categoris![i].data;
        if (categoryId == categoris![i].categoryId) {}
        update();
      }
      print("--------------${categoris!.length}");
      print('***************** $data');
    } catch (e) {
      print('Error while getting data is $e');
    } finally {
      isDataLoading(false);
    }
  }

  addToCart(String name, int price, String color) {
    dl.add(Data(name: name, price: price, color: color));
    update();
  }
}
