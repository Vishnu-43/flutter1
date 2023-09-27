import 'package:flutter/material.dart';
import 'package:flutter1/Whatsappclone/whatsappchatscreen.dart';
class WhatsappHomePage extends StatefulWidget {
  const WhatsappHomePage({super.key});

  @override
  State<WhatsappHomePage> createState() => _WhatsappHomePageState();
}

class _WhatsappHomePageState extends State<WhatsappHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xff128C7E),
          title: Text("WhatsApp"),
          actions: [
            IconButton(onPressed: () {

            }, icon: Icon(Icons.camera_alt_outlined)), IconButton(onPressed: () {

            }, icon: Icon(Icons.search_rounded)),
            PopupMenuButton(itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text("New group")),
                PopupMenuItem(child: Text("New broadcast")),
                 PopupMenuItem(child: Text("Linked device")),
                PopupMenuItem(child: Text("Starred message")),
                PopupMenuItem(child: Text("Payments")),
                PopupMenuItem(child: Text("Settings"))
              ];

            },)
          ],
          bottom: const TabBar(tabs:[
            Tab(icon: Icon(Icons.group),),
            Tab(child: Text("Chats"),),
            Tab(child: Text("Updates"),),
            Tab(child: Text("Calls"),)

          ]),
        ),
        body: const TabBarView(children: [
          Center(child: Text("Page 1")),
          Center(child: WhatsappChatScreen()),
          Center(child: Text("Page 3")),
          Center(child: Text("Page 4")),
          //  Center( child: Text("Page 3")),
        ]),
      ),
    );
  }
}
