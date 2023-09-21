import 'package:flutter/material.dart';
class TabBarSample extends StatefulWidget {
  const TabBarSample({super.key});

  @override
  State<TabBarSample> createState() => _TabBarSampleState();
}

class _TabBarSampleState extends State<TabBarSample> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(tabs: [
          Tab(icon: Icon(Icons.home),),
            Tab(child: Text('Status'),),
            Tab(child: Text('Chat'),)
          ]),
        ),
        
      ),
    );
  }
}
