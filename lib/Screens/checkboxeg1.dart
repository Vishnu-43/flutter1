import 'package:flutter/material.dart';
class CheckBoxSample extends StatefulWidget {
  const CheckBoxSample({super.key});

  @override
  State<CheckBoxSample> createState() => _CheckBoxSampleState();
}

class _CheckBoxSampleState extends State<CheckBoxSample> {
  bool _checkbox=false;
  bool _checkboxListTile=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Check box"),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children:[
                Checkbox(
                  focusColor: Colors.red,
                  autofocus: true,
                  checkColor: Colors.yellowAccent,
                  activeColor: Colors.black,
                  value: _checkbox,
                  onChanged: (bool? value){
                    setState(() {
                      _checkbox=! _checkbox;
                    });
                  },


                ),
                const Text('l am true now'),
              ],
            ),
            CheckboxListTile(
              title: Text("l am true now"),
                value:_checkboxListTile,
                onChanged: (value){
                setState(() {
                  _checkboxListTile=!_checkboxListTile;
                });
                },
            ),
            Text("selected item are $_checkboxListTile")
          ],
        ),
      ),

    );
  }
}
