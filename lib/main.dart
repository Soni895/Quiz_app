import 'package:flutter/material.dart';
import 'package:quiz_app/home.dart';
import 'package:quiz_app/splash.dart';

import 'bottom_bar.dart';

void main() {
  runApp(
    MaterialApp(
      title: "introduction App",
      home: splash(),
      theme: ThemeData(
        brightness: Brightness.light,
        // primarySwatch: Colors.pink,
      ),
    ),
  );
}
