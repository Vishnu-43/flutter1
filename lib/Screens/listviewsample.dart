import 'package:flutter/material.dart';
class ListViewEgone extends StatefulWidget {
  const ListViewEgone({super.key});

  @override
  State<ListViewEgone> createState() => _ListViewEgoneState();
}

class _ListViewEgoneState extends State<ListViewEgone> {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("list"),
      ),
      body:ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              color: Colors.green[colorCodes[index]],
              child: Center(child: Text('Entry ${entries[index]}')),
            );
          })

    );
  }
}
