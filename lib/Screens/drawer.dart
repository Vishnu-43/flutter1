import 'package:flutter/material.dart';
class DrawerSample extends StatefulWidget {
  const DrawerSample({super.key});

  @override
  State<DrawerSample> createState() => _DrawerSampleState();
}

class _DrawerSampleState extends State<DrawerSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(
          child: Column(
            children: [
              DrawerHeader(child:
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 80,
                ),
              )),
              ListTile(leading:Icon(Icons.account_circle_rounded),title: Text("Name"),),
              ListTile(leading: Icon(Icons.email_rounded),title: Text('email'),),
              ListTile(leading: Icon(Icons.settings),title: Text("settings"),),
              ListTile(leading: Icon(Icons.logout),title: Text("Logout"),),
            ],
          )
      ),
    );
  }
}
