import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/src/pages/state_manage_test/controller/simple_c_with_getx.dart';
import 'package:getx_test/src/pages/state_manage_test/controller/simple_c_with_provider.dart';
import 'package:getx_test/src/pages/state_manage_test/simple_with_getx.dart';
import 'package:getx_test/src/pages/state_manage_test/simple_with_provider.dart';
import 'package:provider/provider.dart';

class SimpleState extends StatelessWidget {
  const SimpleState({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SimpleControllerWithGetX());
    return Scaffold(
      appBar: AppBar(
        title: const Text('simple state manage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: SimpleWithGetx()),
            Expanded(
                child: ChangeNotifierProvider<SimpleControllerWithProvider>(
              create: (_) => SimpleControllerWithProvider(),
              child: const SimpleWithPrivider(),
            )),
          ],
        ),
      ),
    );
  }
}
