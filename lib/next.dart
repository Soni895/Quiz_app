import 'package:flutter/material.dart';

class Next extends StatelessWidget {
  int score;
  Next({required this.score});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("congratulation your score is $score"),
      ),
    );
  }
}
