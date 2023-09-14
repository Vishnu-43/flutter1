import 'package:flutter/material.dart';
class GeusterSample extends StatefulWidget {
  const GeusterSample({super.key});

  @override
  State<GeusterSample> createState() => _GeusterSampleState();
}

class _GeusterSampleState extends State<GeusterSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gesture style"),
      ),
      body: Center(
          child: GestureDetector(child: const Text('tap me'),
          onTap: () {

            print('worked');
          },)),
    );
  }
}
