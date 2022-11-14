import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:quiz_app/pages.dart';

class Bottom_bar extends StatefulWidget {
  const Bottom_bar({super.key});

  @override
  State<Bottom_bar> createState() => _Bottom_barState();
}

class _Bottom_barState extends State<Bottom_bar> {
  var pagesdata = [Home(), Recent(), Profile(), Search()];
  int item = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pagesdata[item],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5.0),
            topRight: Radius.circular(5.0),
          ),
        ),
        child: GNav(
          haptic: true,
          gap: 5,
          backgroundColor: Colors.black,
          color: Colors.white,
          activeColor: Colors.blue,
          tabBackgroundColor: Colors.white,
          padding: EdgeInsets.all(12),
          onTabChange: (value) => setState(() {
            item = value;
          }),
          tabs: [
            GButton(
              icon: Icons.home,
              text: "Home",
              //style: TextStyle(color: ),

              iconSize: 30,
            ),
            GButton(
              icon: Icons.recent_actors_outlined,
              text: "Recent",
              iconSize: 30,
            ),
            GButton(
              icon: Icons.account_box,
              text: "Profile",
              iconSize: 30,
            ),
            GButton(
              icon: Icons.search,
              text: "Search",
              iconSize: 30,
            ),
          ],
        ),
      ),
    );
  }
}
