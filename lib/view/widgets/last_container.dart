import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class LastContainer extends StatelessWidget {
  const LastContainer({super.key});

  @override
  Widget build(BuildContext context) {
     double height = Get.height;
    double width = Get.width;
    return Container(
                padding: EdgeInsets.only(top: height * 0.03),
                  width: width ,
                  height: height * 0.18,
                  decoration: BoxDecoration(
                      color: Colors.red.shade100,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                    Text('Mega',style: TextStyle(color: Colors.red.shade700),),
                    Padding(
                      padding:  EdgeInsets.only(left: height * 0.12),
                      child: RichText(
                                  text: TextSpan(
                                      style:
                        TextStyle(fontSize: height * 0.035, color: Colors.black,fontWeight: FontWeight.bold),
                                      children: const [
                      TextSpan(text: "WHOPP"),
                      TextSpan(
                          text: "E",
                          style: TextStyle(color: Colors.red)),
                      TextSpan(
                          text:
                              "R"),
                                      ]),
                                ),
                    ),
                    SizedBox(height: height * 0.01,),
                    Text(
                      "\$ 17",
                      style: TextStyle(
                          color: Colors.red.shade600,
                          fontSize: height * 0.022,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: height * 0.01,),
                    Padding(
                      padding:  EdgeInsets.only(left: height * 0.15),
                      child: Text('* Available until 24 December 2020',style: TextStyle(color: Colors.white,fontSize: height *0.012)),
                    ),

                  ]),
                );
  }
}