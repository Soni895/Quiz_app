import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_main.dart';

import 'bottom_bar.dart';

void main() {
  runApp(
    MaterialApp(
      title: "introduction App",
      home: Bottom_bar(),
      // home: Quiz_app(),
      theme: ThemeData(
        brightness: Brightness.light,
        // primarySwatch: Colors.pink,
      ),
    ),
  );
}
