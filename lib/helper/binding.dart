import 'package:get/get.dart';
import 'package:shop_app/controller/app_controller.dart';
import 'package:shop_app/controller/data_controller.dart';
import 'package:shop_app/controller/home_view_model.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => HomeViewModel());
    Get.lazyPut(() => DataController());
    Get.lazyPut(() => AppController());
  }
}
