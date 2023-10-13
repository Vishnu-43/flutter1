import 'package:flutter/material.dart';
class QuizSampleFour extends StatefulWidget {
  const QuizSampleFour({super.key});

  @override
  State<QuizSampleFour> createState() => _QuizSampleFourState();
}
enum capital{Paris,Madrid,Landon,Rome}

class _QuizSampleFourState extends State<QuizSampleFour> {
  var _capital=capital.Paris;
  var _answer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz app'),
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text("What is the capital of France?"),
            ),
            RadioListTile(title: Text("Paris"),
                value:capital.Paris, groupValue: _capital, onChanged: (value){
              setState(() {
                _capital=value!;
              });
                }),
            RadioListTile(title: Text("Madrid"),
                value:capital.Madrid, groupValue: _capital, onChanged: (value){
                  setState(() {
                    _capital=value!;
                  });
                }),
            RadioListTile(title: Text("London"),
                value:capital.Landon, groupValue: _capital, onChanged: (value){
                  setState(() {
                    _capital=value!;
                  });
                }),
            RadioListTile(title: Text("Rome"),
                value:capital.Rome, groupValue: _capital, onChanged: (value){
                  setState(() {
                    _capital=value!;
                  });
                }),
            ElevatedButton(onPressed: () {
              setState(() {
                _answer= _capital;
              });
            }, child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
