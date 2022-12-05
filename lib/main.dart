import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/home.dart';
import 'package:quiz_app/parallax.dart';
import 'package:quiz_app/splash.dart';

import 'App_state.dart';
import 'bottom_bar.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MaterialApp(
        title: "introduction App",
        home: splash(),
        theme: ThemeData(
          brightness: Brightness.light,
          // primarySwatch: Colors.pink,
        ),
      ),
    ),
  );
}
