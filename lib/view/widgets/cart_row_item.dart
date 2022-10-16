import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shop_app/controller/app_controller.dart';
import 'package:shop_app/controller/data_controller.dart';
import 'package:shop_app/model/shop_model.dart';

class CartRowItem extends StatelessWidget {
  CartRowItem(
      {super.key,
      required this.cartData,
      required this.onTapIncreament,
      required this.onTapDecreament, required this.txt});

  
  final Data cartData;
  final Function() onTapIncreament;
  final Function() onTapDecreament;
  final String txt;
  @override
  Widget build(BuildContext context) {
    double height = Get.height;
    double width = Get.width;
    return GetBuilder<AppController>(
        init: AppController(),
        builder: (controller) {
          return Container(
            height: height * 0.15,
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.all(height * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: height * 0.02),
                    width: width * 0.15,
                    height: height * 0.08,
                    decoration: BoxDecoration(
                        color: Color(int.parse(cartData.color.toString())),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: height * 0.02),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            cartData.name!,
                            style: TextStyle(fontSize: height * 0.015),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Text(
                            '137 Grams',
                            style: TextStyle(fontSize: height * 0.012),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Text(
                            '\$ ${cartData.price}',
                            style: TextStyle(
                                fontSize: height * 0.017,
                                color: Colors.red.shade700),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.1,
                  ),
                  Container(
                    height: height * 0.05,
                    width: width * 0.09,
                    padding: EdgeInsets.only(bottom: height * 0.1),
                    decoration: BoxDecoration(
                        color: Colors.cyan.shade100,
                        borderRadius: BorderRadius.circular(10)),
                    child: InkWell(
                        onTap: onTapDecreament,
                        child: Icon(
                          Icons.minimize,
                          color: Colors.blue,
                          size: height * 0.03,
                        )),
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Text(
                    txt,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: height * 0.02),
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Container(
                    height: height * 0.05,
                    width: width * 0.09,
                    // padding: EdgeInsets.only(bottom: height * 0.1),
                    decoration: BoxDecoration(
                        color: Colors.cyan.shade100,
                        borderRadius: BorderRadius.circular(10)),
                    child: InkWell(
                        onTap: onTapIncreament,
                        child: Icon(
                          Icons.add,
                          color: Colors.blue,
                          size: height * 0.03,
                        )),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
