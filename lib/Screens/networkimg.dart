import 'package:flutter/material.dart';
class NetworkSample extends StatefulWidget {
  const NetworkSample({super.key});

  @override
  State<NetworkSample> createState() => _NetworkSampleState();
}

class _NetworkSampleState extends State<NetworkSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Network image"
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network('https://w0.peakpx.com/wallpaper/454/815/HD-wallpaper-naruto-art-fictional-character-thumbnail.jpg',
            height: 300,
            width:250
            ),
            const Text("it is an image displays form the given url.",
            style:TextStyle(fontSize:20.0 )),
          ],
        ),
      ),
    );
  }
}
