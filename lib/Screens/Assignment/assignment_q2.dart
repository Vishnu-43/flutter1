import 'package:flutter/material.dart';
class AssignmentSampleTwo extends StatefulWidget {
  const AssignmentSampleTwo({super.key});

  @override
  State<AssignmentSampleTwo> createState() => _AssignmentSampleTwoState();
}
enum lion{Carnivore,Herbivore,Omnivore}
enum giraffe{Carnivore,Herbivore,Omnivore}
enum elephant{Carnivore,Herbivore,Omnivore}
enum tiger{Carnivore,Herbivore,Omnivore}
enum bear{Carnivore,Herbivore,Omnivore}
class _AssignmentSampleTwoState extends State<AssignmentSampleTwo> {
  var _lion=lion.Carnivore;
  var _giraffe=giraffe.Carnivore;
  var _elephant=elephant.Carnivore;
  var _tiger=tiger.Carnivore;
  var _bear=bear.Carnivore;
  var _result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kids Quiz app',textAlign: TextAlign.center),
      ),
      body:  Center(
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Select correct answer form below"),
            ),
            Text("Lion is"),

            Row(
              children: [
                Radio(value:lion.Carnivore ,
                    groupValue: _lion ,
                    onChanged: (value) {
                      setState(() {
                        _lion=value!;
                      });
                    },),
                Text("Carnivore"),
                Radio( value:lion.Herbivore ,
                  groupValue: _lion ,
                  onChanged: (value) {
                    setState(() {
                      _lion=value!;
                    });
                  },),
                Text("Herbivore"),
                Radio( value:lion.Omnivore,
                  groupValue: _lion ,
                  onChanged: (value) {
                    setState(() {
                      _lion=value!;
                    });
                  },),
                Text("Omnivore"),
              ],
            ),
            Text("Giraffe is"),

            Row(
              children: [
                Radio(value:giraffe.Carnivore ,
                  groupValue: _giraffe ,
                  onChanged: (value) {
                    setState(() {
                      _giraffe=value!;
                    });
                  },),
                Text("Carnivore"),
                Radio( value:giraffe.Herbivore ,
                  groupValue: _giraffe ,
                  onChanged: (value) {
                    setState(() {
                      _giraffe=value!;
                    });
                  },),
                Text("Herbivore"),
                Radio( value:giraffe.Omnivore,
                  groupValue: _giraffe ,
                  onChanged: (value) {
                    setState(() {
                      _giraffe=value!;
                    });
                  },),
                Text("Omnivore"),
              ],
            ),
            Text("Elephant is"),

            Row(
              children: [
                Radio(value:elephant.Carnivore ,
                  groupValue: _elephant ,
                  onChanged: (value) {
                    setState(() {
                      _elephant=value!;
                    });
                  },),
                Text("Carnivore"),
                Radio( value:elephant.Herbivore ,
                  groupValue: _elephant ,
                  onChanged: (value) {
                    setState(() {
                      _elephant=value!;
                    });
                  },),
                Text("Herbivore"),
                Radio( value:elephant.Omnivore,
                  groupValue: _elephant ,
                  onChanged: (value) {
                    setState(() {
                      _elephant=value!;
                    });
                  },),
                Text("Omnivore"),
              ],
            ),
            Text("Tiger is",style: TextStyle(fontSize: 20),),

            Row(
              children: [
                Radio(value:tiger.Carnivore ,
                  groupValue: _tiger,
                  onChanged: (value) {
                    setState(() {
                      _tiger=value!;
                    });
                  },),
                Text("Carnivore"),
                Radio( value:tiger.Herbivore ,
                  groupValue:_tiger ,
                  onChanged: (value) {
                    setState(() {
                      _tiger=value!;
                    });
                  },),
                Text("Herbivore"),
                Radio( value:tiger.Omnivore,
                  groupValue: _tiger ,
                  onChanged: (value) {
                    setState(() {
                      _tiger=value!;
                    });
                  },),
                Text("Omnivore"),
              ],
            ),
            Text("Bear is",style: TextStyle(fontSize: 20),),

            Row(
              children: [
                Radio(value:bear.Carnivore ,
                  groupValue: _bear,
                  onChanged: (value) {
                    setState(() {
                      _bear=value!;
                    });
                  },),
                Text("Carnivore"),
                Radio( value:bear.Herbivore ,
                  groupValue:_bear ,
                  onChanged: (value) {
                    setState(() {
                      _bear=value!;
                    });
                  },),
                Text("Herbivore"),
                Radio( value:bear.Omnivore,
                  groupValue: _bear ,
                  onChanged: (value) {
                    setState(() {
                      _bear=value!;
                    });
                  },),
                Text("Omnivore"),
              ],
            ),

          ElevatedButton(onPressed: () {
            setState(() {

              
            });
          }, child: Text('Check Final Score')),
            ElevatedButton(onPressed: () {
              setState(() {
                showDialog(context: context,
                  builder:(context) {
                    return AlertDialog(
                      title: Text("Your score is 2 out of 5"),
                      content: TextField(),
                      actions: [
                        TextButton(onPressed: () {
                          Navigator.pop(context);
                        }, child: Text('ok')),
                        
                      ],
                    );
                  }, );

              });
            }, child: Text('Reset Selection'))


          ],
          

        ),
      ),
    );
  }
}
