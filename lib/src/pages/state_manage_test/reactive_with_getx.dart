import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/src/pages/state_manage_test/controller/reactive_c_with_getx.dart';

class ReactiveWithGetX extends StatelessWidget {
  ReactiveWithGetX({super.key});

  final ReactiveControllerWithGetX _controller = Get.find<ReactiveControllerWithGetX>();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'GetX',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          //reactive의 경우 값의 변경이 있을 때만 새로 build
          Obx(
            () => Text(
              '${_controller.count.value}',
              style: const TextStyle(fontSize: 30),
            ),
          ),
          TextButton(
            onPressed: () {
              _controller.increase();
            },
            child: const Text(
              '+',
              style: TextStyle(fontSize: 30),
            ),
          )
        ],
      ),
    );
  }
}
