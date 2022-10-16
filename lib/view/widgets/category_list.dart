import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shop_app/controller/data_controller.dart';
import 'package:shop_app/view/screens/category_items_screen.dart';
import 'package:shop_app/view/widgets/custom_item.dart';

class CategoryList extends StatelessWidget {
  CategoryList({super.key});
  DataController dataController = Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    double height = Get.height;
    double width = Get.width;
    return Container(
        height: height * 0.15,
        child: Obx(
          () => dataController.isDataLoading.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: dataController.shopModel!.categories!.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Get.to(() => CategoryItemScreen(
                            categoryId: dataController.categoryId));
                      },
                      child: CustomItem(
                        categories:
                            dataController.shopModel!.categories![index],
                      ),
                    );
                  }),
        ));
  }
}
