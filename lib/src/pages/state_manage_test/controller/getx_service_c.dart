import 'package:get/get.dart';

class GetXServiceController extends GetxController {
  int count = 0;

  void increase() {
    count++;
    update();
  }

  void clear() {
    count = 0;
    update();
  }
}
