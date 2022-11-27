import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'App_state.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    //AppState provider = Provider.of<AppState>(context);
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("darshan soni"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Card(
            child: Column(
              children: [
                Image.network(
                    "https://api.mmumullana.org/uploads/img/L1_1_83_14886.webp"),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "MMDU",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  //child: ChangeNotifierProvider<AppState>(
                  //create: (context) => AppState(),
                  child: Consumer<AppState>(
                    builder: (context, provider, child) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            provider.message.toString(),
                            style: TextStyle(
                              color: (provider.eligible == true)
                                  ? Colors.green
                                  : Colors.red,
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: "enter your name",
                              labelText: "Name",
                            ),
                            onChanged: (value) {
                              int val = value.length;
                              provider.check(val);
                            },
                          ),
                        ],
                      );
                    },
                  ),
                  // TextField(
                  //   decoration: InputDecoration(
                  //     hintText: "enter your name",
                  //     labelText: "Name",
                  //   ),
                  // ),
                ),
                //  TextField(
                //   decoration: InputDecoration(
                //     hintText: "enter your name",
                //     labelText: "Name",
                //   ),
                // ),

                //   check box;
                Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    if (isChecked == true) {
                      (() {
                        isChecked = false;
                      });
                    } else {
                      setState(() {
                        isChecked = true;
                      });
                    }
                  },
                ),
                ElevatedButton(
                  child: Text("More"),
                  onPressed: () {
                    showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                        ),
                        context: context,
                        builder: (context) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ListTile(
                                leading: Icon(Icons.share),
                                title: Text('Share'),
                              ),
                              ListTile(
                                leading: Icon(Icons.link),
                                title: Text('Get Link'),
                              ),
                              ListTile(
                                leading: Icon(Icons.edit),
                                title: Text('Edit Name'),
                              ),
                              ListTile(
                                leading: Icon(Icons.delete),
                                title: Text('Delete Collection'),
                              ),
                            ],
                          );
                        });
                  },
                ),
              ],
            ),
          ),
        ),
      ),

      //darwer header;
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Darshan soni"),
              accountEmail: Text("Darshansoni895@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                "profile",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text("+918168687827 "),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.account_balance_rounded),
              title: Text(
                "account",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text("personal info"),
              trailing: Icon(Icons.menu),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text(
                "contact us",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text("help Center"),
              trailing: Icon(Icons.menu),
            ),
          ],
        ),
      ),
    );
  }
}
