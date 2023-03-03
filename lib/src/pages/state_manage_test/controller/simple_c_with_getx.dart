import 'package:get/get.dart';

class SimpleControllerWithGetX extends GetxController {
  int count = 0;

  void increase() {
    count++;
    update();
  }
}
