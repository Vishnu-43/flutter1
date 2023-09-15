import 'package:flutter/material.dart';
class QuizSampleOne extends StatefulWidget {
  const QuizSampleOne({super.key});

  @override
  State<QuizSampleOne> createState() => _QuizSampleOneState();
}
enum ocean{ Pacific_Ocean, Atlantic_Ocean,Indian_Ocean,Arctic_Ocean}
class _QuizSampleOneState extends State<QuizSampleOne> {
  var _ocean= ocean.Pacific_Ocean;
  var _result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("What is the largest ocean in the world"),
            ),
            RadioListTile(
               title: Text('Pacafic Oceean'),
                value: ocean.Pacific_Ocean, groupValue:_ocean, onChanged:
            (value){
                 setState(() {
                   _ocean=value!;
                 });
            }
            ),
            RadioListTile(
                title: Text('Atlantic Ocean'),
                value: ocean.Atlantic_Ocean, groupValue:_ocean, onChanged:
                (value){
              setState(() {
                _ocean=value!;
              });
            }
            ),
            RadioListTile(
                title: Text('Indian Ocean'),
                value: ocean.Indian_Ocean, groupValue:_ocean, onChanged:
                (value){
              setState(() {
                _ocean=value!;
              });
            }
            ),
            RadioListTile(
                title: Text('Arctic Ocean'),
                value: ocean.Arctic_Ocean, groupValue:_ocean, onChanged:
                (value){
              setState(() {
                _ocean=value!;
              });
            }
            ),
            ElevatedButton(onPressed:() {
              setState(() {
                _result=_ocean;
              });
              
            }, child: Text("submit"))
          ],
        ),

      ),
    );
  }
}
