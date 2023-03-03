import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/src/pages/route_test/first.dart';

class RoutePage extends StatelessWidget {
  const RoutePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('route management'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const FirstPage(),
                    ),
                  );
                },
                child: Text('normal route')),
            TextButton(
              onPressed: () {
                Get.to(() => const FirstPage());
              },
              child: Text('getx route'),
            ),
            // TextButton(
            //   onPressed: () {
            //     Navigator.of(context).pushNamed('/first');
            //   },
            //   child: Text('normal named route'),
            // ),
            // TextButton(
            //   onPressed: () {
            //     Get.toNamed('/first');
            //   },
            //   child: Text('getx named route'),
            // ),
          ],
        ),
      ),
    );
  }
}
