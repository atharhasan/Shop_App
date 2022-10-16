import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    double height = Get.height;
    double width = Get.width;
    return Container(
      height: height * 0.07,
      padding: EdgeInsets.only(
          left: height * 0.02, top: height * 0.01, bottom: height * 0.01),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey.shade200,
          border: Border.all(color: Colors.black38, width: width * 0.001)),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Search in thousands of products',
            icon: Icon(
              Icons.search,
              size: height * 0.04,
              color: Colors.black38,
            )),
      ),
    );
  }
}
