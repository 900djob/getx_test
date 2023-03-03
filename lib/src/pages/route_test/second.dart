import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/src/pages/route_test/route_home.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('second page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (Get.arguments != null) Text('${Get.arguments}'),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('normal back')),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (_) => const RoutePage(),
                    ),
                    (route) => false,
                  );
                },
                child: Text('normal to home')),
            TextButton(
                onPressed: () {
                  Get.back();
                },
                child: Text('get back')),
            TextButton(
                onPressed: () {
                  Get.offAll(const RoutePage());
                },
                child: Text('get to home')),
          ],
        ),
      ),
    );
  }
}
