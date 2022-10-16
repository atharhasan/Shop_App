import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shop_app/controller/data_controller.dart';
import 'package:shop_app/model/shop_model.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem({super.key, required this.data});
  final Data data;
  DataController dataController = Get.put(DataController());
  @override
  Widget build(BuildContext context) {
    double height = Get.height;
    double width = Get.width;
    return GetBuilder<DataController>(
        init: DataController(),
        builder: (controller) {
          return Container(
            height: height * 0.15,
            width: width,
            margin: EdgeInsets.only(right: height * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin:
                      EdgeInsets.only(left: height * 0.02, top: height * 0.02),
                  width: width * 0.15,
                  height: height * 0.08,
                  decoration: BoxDecoration(
                      color: Color(int.parse(data.color.toString())),
                      borderRadius: BorderRadius.circular(15)),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.06),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        data.name ?? '',
                        style: TextStyle(fontSize: height * 0.015),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Text(
                        "\$ ${data.price}",
                        style: TextStyle(
                            fontSize: height * 0.018,
                            color: Colors.red.shade700),
                      ),
                    ],
                  ),
                ),
                IconButton(
                    onPressed: () {
                      controller.addToCart(
                          '${data.name}', data.price!, data.color!);
                    },
                    icon: Icon(Icons.shopping_cart_checkout_outlined))
              ],
            ),
          );
        });
  }
}
