import 'dart:async';
import 'package:flutter/widgets.dart';

class CounterProvider extends ChangeNotifier {
  int counter = 0;

  add(int num) {
    counter += 1;
    notifyListeners();
  }

  remove(int num) {
    counter -= num;
    notifyListeners();
  }

  stream() {
    notifyListeners();
    for (int i = counter; i > 0; i--) {
      Future.delayed(Duration(seconds: i)).then((value) {
        counter -= 1;
        debugPrint("Assalomu alaykum va rahmatullohi va barakatuh");
        notifyListeners();
      });
    }
  }
}
