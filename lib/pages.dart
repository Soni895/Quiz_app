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
            // _launchURLApp();
            _launchUrl();
          },
          child: Text('open chrome'),
        ),
      ),
    );
  }
}

// _launchURLApp() async {
//   var url = Uri.parse("https://www.amazon.in/");
//   if (await canLaunchUrl(url)) {
//     var bool = await launchUrl(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }
final Uri _url = Uri.parse('https://www.amazon.in/');

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}
