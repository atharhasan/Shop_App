import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shop_app/model/shop_model.dart';

class CustomItem extends StatelessWidget {
  CustomItem({super.key, required this.categories});
 
  final Categories categories;

  @override
  Widget build(BuildContext context) {
    double height = Get.height;
    double width = Get.width;
    return Column(
      children: [
        Container(
          // padding: EdgeInsets.all(height * 0.02),
          margin: EdgeInsets.all(height * 0.01),
          width: width * 0.15,
          height: height * 0.08,
          decoration: BoxDecoration(
              color: Color(int.parse(categories.color.toString())), borderRadius: BorderRadius.circular(15)),
        ),
        Text(
          categories.name ?? '',
          style: TextStyle(fontSize: height * 0.015),
        )
      ],
    );
  }
}
