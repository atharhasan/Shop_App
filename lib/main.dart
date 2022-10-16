import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/controller/home_view_model.dart';
import 'package:shop_app/helper/binding.dart';
import 'package:shop_app/view/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     debugShowCheckedModeBanner: false,
     home: Home(),
     initialBinding: Binding(),
     
    );
  }
}


