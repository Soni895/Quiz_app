import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'bottom_bar.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  // void initState() {
  //   super.initState();
  //   navigatetohome();
  // }

  // navigatetohome() async {
  //   await Future.delayed(
  //     Duration(milliseconds: 5000),
  //     () {},
  //   );
  //   Navigator.pushReplacement(
  //     context,
  //     MaterialPageRoute(builder: (context) => Bottom_bar()),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        backgroundColor: Colors.black,
        duration: 2000,
        splashTransition: SplashTransition.scaleTransition,
        splash: Center(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Quiz",
                  style: TextStyle(
                      fontSize: 60,
                      fontStyle: FontStyle.italic,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
                Text(
                  " App",
                  style: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.italic,
                      color: Colors.blue.shade50),
                ),
              ],
            ),
          ),
        ),
        nextScreen: Bottom_bar());
    // return Scaffold(
    //   backgroundColor: Colors.black,
    //   body: Center(
    //     child: Container(
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         children: [
    //           Text(
    //             "Quiz",
    //             style: TextStyle(
    //                 fontSize: 40,
    //                 fontStyle: FontStyle.italic,
    //                 color: Color.fromARGB(255, 255, 255, 255)),
    //           ),
    //           Text(
    //             " App",
    //             style: TextStyle(
    //                 fontSize: 20,
    //                 fontStyle: FontStyle.italic,
    //                 color: Colors.blue.shade50),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
