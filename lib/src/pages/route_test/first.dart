import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/src/pages/route_test/second.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('first page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Get.to(() => const SecondPage());
              },
              child: Text('next'),
            ),
            TextButton(
              onPressed: () {
                Get.to(() => const SecondPage(), arguments: '전달된 인자');
              },
              child: Text('next with argument'),
            ),
          ],
        ),
      ),
    );
  }
}
