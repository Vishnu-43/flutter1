import 'package:flutter/material.dart';

class QuizSampleEgtwo extends StatefulWidget {
  const QuizSampleEgtwo({super.key});

  @override
  State<QuizSampleEgtwo> createState() => _QuizSampleEgtwoState();
}
enum mountain{mount_everest,k2,kangchenjunga,makalu}


  class _QuizSampleEgtwoState extends State<QuizSampleEgtwo> {
  var _mountain=mountain.mount_everest;
  var _result;
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  title: Text('Quiz app'),
  ),
  body: Center(
  child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
  const Padding(
  padding: EdgeInsets.all(8.0),
  child: Text("what is the tallest mountain in the world"),
  ),
  RadioListTile(title: Text('Mount Everest'),
  value: mountain.mount_everest, groupValue:_mountain, onChanged:
  (value){
  setState(() {
  _mountain=value!;
  });
  }),
    RadioListTile(title: Text('K2'),
        value: mountain.k2, groupValue:_mountain, onChanged:
            (value){
          setState(() {
            _mountain=value!;
          });
        }),
    RadioListTile(title: Text('Kangchenjunga'),
        value: mountain.kangchenjunga, groupValue:_mountain, onChanged:
            (value){
          setState(() {
            _mountain=value!;
          });
        }),
    RadioListTile(title: Text('Makalu'),
        value: mountain.makalu, groupValue:_mountain, onChanged:
            (value){
          setState(() {
            _mountain=value!;
          });
        }),
    ElevatedButton(onPressed:() {
      setState(() {
        _result= _mountain;
      });
    },  child:Text('submit'))


  ],
  ),

  ),
  );
  }
  }
