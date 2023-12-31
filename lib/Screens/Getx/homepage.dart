import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'homepagecontroller.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key,required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final MyHomePageController controller= Get.put(MyHomePageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:  Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(style: TextStyle(fontSize: 18),'You have pushed the button this many times:',),
          Obx(()=> Text('You have pushed the button this many times: ',))
        ]),
      ),
      floatingActionButton: FloatingActionButton(onPressed: controller.increment,
      tooltip: 'Increment',
      child: Icon(Icons.add),),
    );
  }
}
