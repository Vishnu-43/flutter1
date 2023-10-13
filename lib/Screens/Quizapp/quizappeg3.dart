import 'package:flutter/material.dart';
class QuizSampleEgthree extends StatefulWidget {
  const QuizSampleEgthree({super.key});

  @override
  State<QuizSampleEgthree> createState() => _QuizSampleEgthreeState();
}
enum painted{leo,pablo,vincent,michelangelo}
class _QuizSampleEgthreeState extends State<QuizSampleEgthree> {
  var _painted=painted.leo;
  var _author;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz app'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Who painted the Moan lisa?'),
            ),
            RadioListTile(title: Text('Leonardo da vinci'),
                value: painted.leo, groupValue:_painted, onChanged:(value){
              setState(() {
                _painted=value!;
              });
                }),
            RadioListTile(title: Text('Pablo Picasso'),
                value: painted.pablo, groupValue:_painted, onChanged:(value){
                  setState(() {
                    _painted=value!;
                  });
                }),
            RadioListTile(title: Text('Vincent van Gogh'),
                value: painted.vincent, groupValue:_painted, onChanged:(value){
                  setState(() {
                    _painted=value!;
                  });
                }),
            RadioListTile(title: Text('Michelangelo'),
                value: painted.michelangelo, groupValue:_painted, onChanged:(value){
                  setState(() {
                    _painted=value!;
                  });
                }),
            ElevatedButton(onPressed: () {
              setState(() {
                _author=_painted;
              });
            }, child: Text("submit"))

          ],
        ),
      ),
    );
  }
}
