import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReactiveControllerWithGetX extends GetxController {
  RxInt count = 0.obs;

  void increase() {
    count++;
  }

  @override
  void onInit() {
    ever(count, (_) => debugPrint('매 번 호출'));
    once(count, (_) => debugPrint('한 번만 호출'));
    debounce(count, (_) => debugPrint('마지막 변경에만 호출'), time: const Duration(seconds: 5));
    interval(count, (_) => debugPrint('변경되는 동안 1초마다 호출'), time: const Duration(seconds: 1));
    super.onInit();
  }
}
