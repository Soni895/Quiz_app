import 'dart:async';

import 'package:flutter/foundation.dart';

class AppState extends ChangeNotifier {
  bool eligible = false;
  var message = "";
  void check(int s) {
    if (s >= 5) {
      eligible = true;
      message = "eligible";
    } else {
      eligible = false;
      message = "Not eligible";
    }

    notifyListeners();
  }

  int start = 0;
  bool pause = false;
  void count(int start) {
    this.start = start;
    if (pause) notifyListeners();
  }

  void getTimer() {
    pause = !pause;
    {
      Timer.periodic(Duration(seconds: 1), (timer) {
        count(timer.tick);
      });
    }
  }

//change
  bool change = false;
  void update() {
    change = !change;
    notifyListeners();
  }
}
