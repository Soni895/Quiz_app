import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Recentpages.dart';

// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text("Home"),
//       ),
//     );
//   }
// }

class Recent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("i am recent"),
      ),
    );
  }
}

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigator.push(context,
            //     MaterialPageRoute(builder: ((context) => Recentpages())));
            _launchURLApp();
          },
          child: Text('open chrome'),
        ),
      ),
    );
  }
}

_launchURLApp() async {
  var url = Uri.parse("https://www.google.co.in/");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
