import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/App_state.dart';
import 'package:quiz_app/provider_page.dart';
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
    AppState provider = Provider.of<AppState>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.update),
        onPressed: () {
          provider.update();
        },
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //provider.change ? first() : second(),
            Text(
              " value ${provider.start}",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20,
            ),

            CupertinoButton(
                color: Colors.black,
                child: Text("press"),
                onPressed: (() {
                  // provider.check(100);
                  provider.getTimer();
                }))
            //Text(" value ${provider.temp}"),
          ],
        ),
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
