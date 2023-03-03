import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/src/pages/dependency_test/dependency_home.dart';
import 'package:getx_test/src/pages/state_manage_test/state_home.dart';

import 'route_test/route_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            TextButton(
              onPressed: () {
                Get.to(() => const RoutePage());
              },
              child: const Text('route test'),
            ),
            TextButton(
              onPressed: () {
                Get.to(() => const StateHome());
              },
              child: const Text('state manage test'),
            ),
            TextButton(
              onPressed: () {
                Get.to(() => const DependencyHome());
              },
              child: const Text('dependency test'),
            ),
          ],
        ),
      ),
    );
  }
}
