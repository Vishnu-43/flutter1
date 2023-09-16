import 'package:flutter/material.dart';
class TextFieldSampleTwo extends StatefulWidget {
  const TextFieldSampleTwo({super.key});

  @override
  State<TextFieldSampleTwo> createState() => _TextFieldSampleTwoState();
}

class _TextFieldSampleTwoState extends State<TextFieldSampleTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text(data),),
      body: Padding(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Type something'

              ),
            ),
            ElevatedButton(onPressed: () {


            }, child: Text("click here"))
          ],
        ),
      ),
    );
  }
}
