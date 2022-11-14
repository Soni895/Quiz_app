import 'package:flutter/material.dart';

class Recentpages extends StatefulWidget {
  const Recentpages({super.key});

  @override
  State<Recentpages> createState() => _RecentState();
}

class _RecentState extends State<Recentpages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("i am chrome"),
      ),
    );
  }
}
