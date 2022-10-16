import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shop_app/view/widgets/custom_item.dart';

class AddressItem extends StatelessWidget {
  const AddressItem({super.key});

  @override
  Widget build(BuildContext context) {
    double height = Get.height;
    double width = Get.width;
    return Container(
      height: height * 0.08,
      width: width * 0.45,
      // padding: EdgeInsets.only(right: height * 0.03),
      margin: EdgeInsets.only(right: height * 0.02), 
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white,
          border: Border.all(color: Colors.black,width: width * 0.001)),
          child: Row(children: [ 
             Container(
          margin: EdgeInsets.all(height * 0.01),
          width: width * 0.15,
          height: height * 0.08,
          decoration:
              BoxDecoration(color: Colors.brown.shade200, borderRadius: BorderRadius.circular(15)),
        ),
            Padding(
              padding:  EdgeInsets.only(top: height * 0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('Home Address',style: TextStyle(fontWeight: FontWeight.bold,fontSize: height * 0.012)),
                Text('Mustafa St',style: TextStyle(fontSize: height * 0.012),),
                Text('Street 12X',style: TextStyle(fontSize: height * 0.012),)
              ],),
            )
          ]),
    );
    
  }
}
