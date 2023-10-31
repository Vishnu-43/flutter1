import 'package:flutter/material.dart';
class AnimationScreen extends StatefulWidget {
  const AnimationScreen({super.key});

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> with
  SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation? colorAnimation;
  Animation? sizeAnimation;


  @override
  void initState(){
    super.initState();
    controller= AnimationController(vsync: this,duration: Duration(seconds: 2));
    colorAnimation= ColorTween(begin:Colors.blue,end: Colors.yellow).animate(controller!);
    sizeAnimation= Tween<double>(begin: 100.0,end: 200.0).animate(controller!);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation screen"),
      ),
      body: Center(
        child: Container(
          height: sizeAnimation!.value,
          width: sizeAnimation!.value,
          color: colorAnimation!.value,
        ),
      ),
    );
  }
  }

