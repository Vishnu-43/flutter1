import 'package:flutter/material.dart';
class RadioButtonSample extends StatefulWidget {
  const RadioButtonSample({super.key});

  @override
  State<RadioButtonSample> createState() => _RadioButtonSampleState();
}
enum gender{
  male,female,other
}
class _RadioButtonSampleState extends State<RadioButtonSample> {
  var _gender=gender.male;
  var data="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Column(
        children: [
         Row(
           children: [
             Radio(value: gender.male ,
               groupValue: _gender,
               onChanged: (value) {
               setState(() {
                 _gender=value!;
               });

             },),
             Text('male')
           ],
         ),
          Row(
            children: [
              Radio(value: gender.female ,
                groupValue: _gender,
                onChanged: (value) {
                setState(() {
                  _gender=value!;
                });

              },),
              Text('female')
            ],
          ),
          RadioListTile(
            title: Text("Other"),
            subtitle: Text("for other category"),
            value: gender.other,
            groupValue: _gender,
            onChanged: (value){
              setState(() {
                _gender=value!;
              });
            },
          ),
          ElevatedButton(
           onPressed: (){
            setState(() {
                data = _gender.name;
              });
            },
          child: Text("view Data")),
          Text(data)
        ]
      ) ,
    );
  }
}

