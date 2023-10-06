import 'package:flutter/material.dart';
class ChartSample extends StatefulWidget {
  const ChartSample({super.key});

  @override
  State<ChartSample> createState() => _ChartSampleState();
}

class _ChartSampleState extends State<ChartSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chart sample'),
      ),
    );
  }
}
