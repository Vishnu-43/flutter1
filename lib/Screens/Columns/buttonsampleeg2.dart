import 'package:flutter/material.dart';
class ButtonSampleEgtwo extends StatefulWidget {
  const ButtonSampleEgtwo({super.key});

  @override
  State<ButtonSampleEgtwo> createState() => _ButtonSampleEgtwoState();
}

class _ButtonSampleEgtwoState extends State<ButtonSampleEgtwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Buttons")),
      ),
      body: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child:  Column(
              children: [
                const Text(
                  "hello welcome",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'PlayfairDisplay'
                  ),
                ),
                TextButton(onPressed: () {
                  print('success here');
                },
                    child: Text("click me"))
              ],
            ),
          )),
    );
  }
}
