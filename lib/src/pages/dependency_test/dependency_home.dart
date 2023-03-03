import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:getx_test/src/pages/dependency_test/get_lazy_put.dart';
import 'package:getx_test/src/pages/dependency_test/get_lazy_put_c.dart';
import 'package:getx_test/src/pages/dependency_test/get_put.dart';
import 'package:getx_test/src/pages/dependency_test/get_put_c.dart';

class DependencyHome extends StatelessWidget {
  const DependencyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('getX Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //route와 동시에 controller initial
            TextButton(
              onPressed: () {
                Get.to(
                  () => const GetPut(),
                  binding: BindingsBuilder(() {
                    Get.put(
                      GetPutController(),
                    );
                  }),
                );
              },
              child: const Text('Get.put'),
            ),
            //route 후 액션이 있으면 initial
            TextButton(
              onPressed: () {
                Get.to(
                  () => const GetLazyPut(),
                  binding: BindingsBuilder(() {
                    Get.lazyPut<GetLazyPutController>(
                      () => GetLazyPutController(),
                    );
                  }),
                );
              },
              child: const Text('Get.lazyPut'),
            ),
            //동기 작업이 필요할 경우
            TextButton(
              onPressed: () {
                Get.to(
                  () => const GetPut(),
                  binding: BindingsBuilder(() {
                    Get.putAsync<GetPutController>(() async {
                      await Future.delayed(const Duration(seconds: 3));
                      return GetPutController();
                    });
                  }),
                );
              },
              child: const Text('Get.putAsync'),
            ),
          ],
        ),
      ),
    );
  }
}
