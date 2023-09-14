import 'package:flutter/material.dart';
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text("second page",

        style: TextStyle(
          color: Colors.red,
          fontSize: 45,
          fontWeight: FontWeight.bold
        )),
      ),
      body: const Text(
    "body"
    )
      ,);
  }
}
