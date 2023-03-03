import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/src/pages/state_manage_test/controller/getx_service_c.dart';
import 'package:getx_test/src/pages/state_manage_test/controller/reactive_c_with_getx.dart';
import 'package:getx_test/src/pages/state_manage_test/reactive_with_getx.dart';

class GetXService extends StatelessWidget {
  GetXService({super.key});

  final GetXServiceController _controller = Get.find<GetXServiceController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('getx service'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'GetX',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            GetBuilder<GetXServiceController>(builder: (c) {
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
            ),
            TextButton(
              onPressed: () {
                _controller.clear();
              },
              child: const Text(
                'clear',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
