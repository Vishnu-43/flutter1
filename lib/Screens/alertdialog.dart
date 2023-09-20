import 'package:flutter/material.dart';

class AlertSampleOne extends StatefulWidget {
  const AlertSampleOne({super.key});

  @override
  State<AlertSampleOne> createState() => _AlertSampleOneState();
}

class _AlertSampleOneState extends State<AlertSampleOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'alert',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    showDialog(context: context,
                        builder:(context) {
                          return AlertDialog(
                            content: TextField(),
                            actions: [
                              TextButton(onPressed: () {
                                Navigator.pop(context);
                              }, child: Text('yes')),
                              TextButton(onPressed: () {
                                Navigator.pop(context);
                              }, child: Text("No"))
                            ],
                          );
                        }, );
                  });

                },
                child: Text("alert"))
          ],
        ),
      ),
    );
  }
}
