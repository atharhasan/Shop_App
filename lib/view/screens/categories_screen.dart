import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:shop_app/controller/data_controller.dart';
import 'package:shop_app/controller/home_view_model.dart';
import 'package:shop_app/view/widgets/address_item.dart';
import 'package:shop_app/view/widgets/address_list.dart';
import 'package:shop_app/view/widgets/address_row.dart';
import 'package:shop_app/view/widgets/category_list.dart';
import 'package:shop_app/view/widgets/custom_item.dart';
import 'package:shop_app/view/widgets/custom_search_field.dart';
import 'package:shop_app/view/widgets/deals_day_list.dart';
import 'package:shop_app/view/widgets/last_container.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({super.key});
  DataController dataController = Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    double height = Get.height;
    double width = Get.width;

    return Scaffold(
        body: Obx(
      () => dataController.isDataLoading.value
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              width: double.infinity,
              height: double.infinity,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(height * 0.015),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AddressRow(),
                      CustomSearchField(),
                      AddressList(),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Explore by Category',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: height * 0.015)),
                          const Text(
                            'See All (36)',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      CategoryList(),
                      Text('Deals of the day',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: height * 0.015)),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      DealsDayList(),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      LastContainer(),
                    ],
                  ),
                ),
              ),
            ),
    ));
  }
}
