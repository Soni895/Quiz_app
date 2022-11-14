import 'package:flutter/material.dart';
import 'package:quiz_app/home.dart';

import 'bottom_bar.dart';

void main() {
  runApp(
    MaterialApp(
      title: "introduction App",
      home: Bottom_bar(),
      theme: ThemeData(
        brightness: Brightness.light,
        // primarySwatch: Colors.pink,
      ),
    ),
  );
}
