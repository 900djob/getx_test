import 'package:flutter/widgets.dart';

class SimpleControllerWithProvider extends ChangeNotifier {
  int count = 0;

  void increase() {
    count++;
    notifyListeners();
  }
}
