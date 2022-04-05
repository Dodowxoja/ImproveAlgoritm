import 'dart:math';

import 'package:flutter/widgets.dart';

class RandomProvider extends ChangeNotifier {
  List<int> randoms =
      List.generate(9, (index) => Random().nextInt(50)).toList();
  bool isVisible = false;

  void showRandoms() {
    isVisible = true;
    Future.delayed(const Duration(seconds: 5)).then((value) {
      isVisible = false;
      notifyListeners();
    });
    notifyListeners();
  }

  void randomize() {
    randoms = List.generate(6, (index) => Random().nextInt(50));
    notifyListeners();
  }

  void delete(int index) {
    randoms.sort(((a, b) => a.bitLength.compareTo(b.bitLength)));
    List<int> sorted = List.generate(randoms.length, (index) => index);
    print(randoms);
    randoms.sort();

    if (randoms[index] == randoms.first) {
      randoms.removeAt(index);
      notifyListeners();
    }
    notifyListeners();
  }
}
