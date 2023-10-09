import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastSample1 extends StatefulWidget {
  const ToastSample1({super.key});

  @override
  State<ToastSample1> createState() => _ToastSample1State();
}

class _ToastSample1State extends State<ToastSample1> {
  showToastNotification() {
    Fluttertoast.showToast(
        msg: 'Hello this is toast is toast notification',
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER_LEFT,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.yellowAccent,
        textColor: Colors.teal,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Toast message")),
      body: Center(
        child: Center(
          child: ElevatedButton(
              onPressed: () => showToastNotification(),
              child: const Text("Show toast notification")),
        ),
      ),
    );
  }
}
