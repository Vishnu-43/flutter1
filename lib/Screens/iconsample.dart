import 'package:flutter/material.dart';
class IconImageSample extends StatefulWidget {
  const IconImageSample({super.key});

  @override
  State<IconImageSample> createState() => _IconImageSampleState();
}

class _IconImageSampleState extends State<IconImageSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icons are here'),
      ),
      body: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.search_off),
          Icon(Icons.save),
          Icon(Icons.search),
        ],
      ),
    );
  }
}
