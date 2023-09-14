import 'package:flutter/material.dart';

class TextSample extends StatefulWidget {
  const TextSample({super.key});

  @override
  State<TextSample> createState() => _TextSampleState();
}

class _TextSampleState extends State<TextSample> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Examples",
          textScaleFactor: 2,
          style: TextStyle(
            color: Colors.red,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: width,
            child: const Text(
              "hello wellcome",
              textAlign: TextAlign.center,
              textScaleFactor: 2.0,
              style: TextStyle(
                color: Colors.black45,
                fontWeight: FontWeight.w600,
                fontSize: 20.0,
                letterSpacing: 4,
                wordSpacing: 50.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
