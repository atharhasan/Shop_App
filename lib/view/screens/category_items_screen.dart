import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shop_app/controller/data_controller.dart';
import 'package:shop_app/model/shop_model.dart';
import 'package:shop_app/view/widgets/category_item.dart';

class CategoryItemScreen extends StatelessWidget {
  CategoryItemScreen({
    super.key,
    required this.categoryId,
  });
  final int? categoryId;
  List<Data>? data;

  DataController dataController = Get.put(DataController());
  // getCategoryItem() {
  //   for (int i = 0; i < dataController.shopModel!.categories!.length; i++) {
  //     if (categoryId == dataController.shopModel!.categories![i].categoryId) {
  //       data = dataController.shopModel!.categories![i].data;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    double height = Get.height;
    double width = Get.width;
    return Scaffold(
        body: Obx(() => dataController.isDataLoading.value? const Center(child: CircularProgressIndicator(),):
         Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return CategoryItem(
                  data: dataController.dataList![index]);
            },
            itemCount: dataController.dataList!.length,
          ),
        ),
      ),
    ));
  }
}
