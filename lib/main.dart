import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/src/pages/home.dart';
import 'package:getx_test/src/pages/route_test/first.dart';
import 'package:getx_test/src/pages/route_test/route_home.dart';

import 'src/pages/route_test/second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      /*
      initialRoute: '/',
      normal named route
      routes: {
        '/' : (context) => const HomePage(),
        '/route' : (context) => const RoutePage(),
        '/first' : (context) => const FirstPage(),
        '/second' : (context) => const SecondPage(),
      },

      getx named route
      getPages: [
        GetPage(name: '/', page: () => const HomePage()),
        GetPage(name: '/route', page: () => const RoutePage()),
        GetPage(name: '/first', page: () => const FirstPage()),
        GetPage(name: '/second', page: () => const SecondPage()),
      ],
      */
    );
  }
}
