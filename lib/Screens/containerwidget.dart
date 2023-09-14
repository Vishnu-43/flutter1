import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("flutter logo"),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          // color: Colors.amber,
          /*child: const FlutterLogo(
           size: 200,

          ),*/
          //margin: EdgeInsets.only(left: 70, bottom: 50),
          decoration: BoxDecoration(color: Colors.yellow, border: Border.all(),
            image: const DecorationImage(image:
            NetworkImage(
                '')
          //transform: Matrix4.rotationX(0.3),
          

          //alignment: Alignment.center,
          /* constraints: const BoxConstraints(
            maxHeight: 400,
            maxWidth: 400,
            minHeight: 100,
            minWidth: 100,*/
        ),
      ),
    )
      )
    );
  }
}
