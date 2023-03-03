import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/src/pages/state_manage_test/controller/simple_c_with_getx.dart';

class SimpleWithGetx extends StatelessWidget {
  SimpleWithGetx({super.key});

  final SimpleControllerWithGetX _controller = Get.find<SimpleControllerWithGetX>();

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
          GetBuilder<SimpleControllerWithGetX>(builder: (c) {
            return Text(
              '${c.count}',
              style: const TextStyle(fontSize: 30),
            );
          }),
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
