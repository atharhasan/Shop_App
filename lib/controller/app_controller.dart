import 'package:get/get.dart';

class AppController extends GetxController {
  int counter = 0;
  

  void increament() {
    counter++;
    update();
  }

  void decreament() {
    counter--;
    update();
  }
}
