import 'package:flutter/cupertino.dart';

class ChangeofPage extends ChangeNotifier {
  int pageIndex = 0;
  final double size = 28;
  final double activesize = 29;
  Map<int, bool> active = {
    0: false,
    1: true,
    2: true,
    3: true,
    4: true,
  };
  void kCallback(int index) {
    pageIndex = index;

    notifyListeners();
  }

  void change(int i) {
    if (active[i] == true) {
      active.update(i, (value) => false);
    }
    for (int index = 0; index < active.length; index++) {
      if (i != index) {
        active.update(index, (value) => true);
      }
    }
    notifyListeners();
  }
}
