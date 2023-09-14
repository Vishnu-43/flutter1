
import 'package:flutter/material.dart';
class TextFieldSample extends StatefulWidget {
  const TextFieldSample({super.key});

  @override
  State<TextFieldSample> createState() => _TextFieldSampleState();
}

class _TextFieldSampleState extends State<TextFieldSample> {
  var nameController=TextEditingController();
  var data="";
  bool invisible=true;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      body:  Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(50.0),
              child: TextField(
              controller: nameController,
              obscureText:true,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.visibility),
                  hintText: "enter the name",
                  label: Text('Name'),
                  border: OutlineInputBorder()
                ),

            ),
          ),
          ElevatedButton(onPressed: (){
            setState(() {
              data=nameController.text;
            });
          }, child: Text("click here")),
          OutlinedButton(onPressed: (){

          },child: Text("Outlined")),
        ],
      ),

    );
  }
}
