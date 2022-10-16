import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class AddressRow extends StatelessWidget {
  const AddressRow({super.key});

  @override
  Widget build(BuildContext context) {
    double height = Get.height;
    double width = Get.width;
    return Container(
      height: height * 0.2,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Stack(children: [
          Image.asset(
            'assets/images/shape.png',
            fit: BoxFit.contain,
            width: width * 0.4,
            height: height * 0.3,
          ),
          Positioned(
              top: height * 0.085,
              left: height * 0.03,
              child: Row(
                children:const [
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.white,
                  ),
                  Text(
                    'Mustafa St',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              )),
        ]),
        CircleAvatar(
          backgroundImage: const AssetImage('assets/images/Circle_img.png'),
          radius: height * 0.03,
        )
      ]),
    );
  }
}
