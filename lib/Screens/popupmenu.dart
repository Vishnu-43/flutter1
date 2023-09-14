import 'package:flutter/material.dart';
class PopupMenuSample extends StatefulWidget {
  const PopupMenuSample({super.key});

  @override
  State<PopupMenuSample> createState() => _PopupMenuSampleState();
}

class _PopupMenuSampleState extends State<PopupMenuSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(itemBuilder:(context){
             return [
               const PopupMenuItem(
                   child:Text(
                       "download") ),
               const PopupMenuItem(
                   child: Text("save")),
               const PopupMenuItem(
                   child: Text("share"))
             ];


          },)

        ],

      ),
    );
  }
}
