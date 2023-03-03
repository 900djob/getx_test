import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/src/pages/state_manage_test/controller/reactive_c_with_getx.dart';
import 'package:getx_test/src/pages/state_manage_test/reactive_with_getx.dart';

class ReactiveState extends StatelessWidget {
  const ReactiveState({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ReactiveControllerWithGetX());
    return Scaffold(
      appBar: AppBar(
        title: const Text('reactive state manage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: ReactiveWithGetX()),
          ],
        ),
      ),
    );
  }
}
