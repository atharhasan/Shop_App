import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class DealsDayList extends StatelessWidget {
  const DealsDayList({super.key});

  @override
  Widget build(BuildContext context) {
    double height = Get.height;
    double width = Get.width;
    return Container(
      height: height * 0.2,
      child: ListView.builder(
        itemCount: 2,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        right: height * 0.01, top: height * 0.01),
                    width: width * 0.3,
                    height: height * 0.16,
                    decoration: BoxDecoration(
                        color: Colors.teal.shade100,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  Positioned(
                      top: height * 0.01,
                      child: CircleAvatar(
                        radius: height * 0.016,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: height * 0.018,
                        ),
                      ))
                ],
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: height * 0.01, right: height * 0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Summer Sun ice cream pack',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: height * 0.015),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(
                      'Pieces 5',
                      style: TextStyle(fontSize: height * 0.015),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: height * 0.015,
                        ),
                        Text(
                          '15 Minutes away',
                          style: TextStyle(fontSize: height * 0.015),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    Text(
                      "\$ 12",
                      style: TextStyle(
                          color: Colors.orange.shade800,
                          fontSize: height * 0.018,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
