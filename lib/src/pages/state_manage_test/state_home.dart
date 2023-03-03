import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/src/pages/state_manage_test/controller/getx_service_c.dart';
import 'package:getx_test/src/pages/state_manage_test/getx_service.dart';
import 'package:getx_test/src/pages/state_manage_test/reactive_state.dart';
import 'package:getx_test/src/pages/state_manage_test/simple_state.dart';

class StateHome extends StatelessWidget {
  const StateHome({super.key});

  @override
  Widget build(BuildContext context) {
    //get service는 state를 유지
    Get.put(GetXServiceController(), permanent: true);
    return Scaffold(
      appBar: AppBar(
        title: const Text('state management'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Get.to(() => const SimpleState());
              },
              child: const Text('simple state manage'),
            ),
            TextButton(
              onPressed: () {
                Get.to(() => const ReactiveState());
              },
              child: const Text('reactive state manage'),
            ),
            TextButton(
              onPressed: () {
                Get.to(() => GetXService());
              },
              child: const Text('getx service'),
            ),
          ],
        ),
      ),
    );
  }
}
