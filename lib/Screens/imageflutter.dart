import 'package:flutter/material.dart';

class ImageSample extends StatefulWidget {
  const ImageSample({super.key});

  @override
  State<ImageSample> createState() => _ImageSampleState();
}

class _ImageSampleState extends State<ImageSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image is here",
            style: TextStyle(fontSize: 20, fontFamily: 'PlayfairDisplay')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Learn Fltter",
                style: TextStyle(fontSize: 30, fontFamily: 'PlayfairDisplay')),
            Container(
                height: 200,
                 width: 300,
                child: const Image(
                    image: AssetImage('assets/images/flutter.jpeg'))),
            Container(
              height: 300,
                width: 300,
              child:const Image(image: AssetImage('assets/images/Naruto.jpeg'))
            )
            // (1): asset image
          ],
        ),
      ),
    );
  }
}
