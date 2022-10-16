import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shop_app/controller/app_controller.dart';
import 'package:shop_app/controller/data_controller.dart';
import 'package:shop_app/view/widgets/address_row.dart';
import 'package:shop_app/view/widgets/cart_row_item.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});
  DataController dataController = Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    double height = Get.height;
    double width = Get.width;
    return Scaffold(
        body: GetBuilder<DataController>(
            init: DataController(),
            builder: (controller) {
              return Container(
                height: double.infinity,
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(height * 0.015),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AddressRow(),
                        Padding(
                          padding: EdgeInsets.only(left: height * 0.02),
                          child: Text(
                            'Cart',
                            style: TextStyle(
                                fontSize: height * 0.025,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        GetBuilder<AppController>(
                            init: AppController(),
                            builder: (controller) {
                              return ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: dataController.dl.length,
                                  itemBuilder: (context, index) {
                                    return CartRowItem(
                                      cartData: dataController.dl[index],
                                      onTapDecreament: () {
                                        controller.decreament();
                                        print(controller.counter);
                                      },
                                      onTapIncreament: () {
                                        controller.increament();
                                      },
                                      txt: '${controller.counter}',
                                    );
                                  });
                            })
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}
