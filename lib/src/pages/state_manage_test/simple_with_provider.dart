import 'package:flutter/material.dart';
import 'package:getx_test/src/pages/state_manage_test/controller/simple_c_with_provider.dart';
import 'package:provider/provider.dart';

class SimpleWithPrivider extends StatelessWidget {
  const SimpleWithPrivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Provider',
            style: TextStyle(fontSize: 20),
          ),
          // Text(
          //   '${Provider.of<SimpleControllerWithProvider>(context).count}',
          //   style: const TextStyle(fontSize: 30),
          // ),
          Consumer<SimpleControllerWithProvider>(
            builder: (context, value, child) {
              return Text(
                '${value.count}',
                style: const TextStyle(fontSize: 30),
              );
            },
          ),
          TextButton(
            onPressed: () {
              Provider.of<SimpleControllerWithProvider>(context, listen: false).increase();
            },
            child: const Text(
              '+',
              style: TextStyle(fontSize: 30),
            ),
          )
        ],
      ),
    );
  }
}
