import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter1/main.dart';
import 'navbar.dart';

class SettingScreen extends StatelessWidget {
  static String id='setting_screen';

  final formKey=GlobalKey<FormState>();

  final Map data={'name': String,'email': String,'age':int};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(),
      appBar: AppBar(
          title: Text('Change Account details')),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
          child: Form(key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Name'),
                    onSaved: (input)=>data['name']=input,
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Email'),
                    onSaved: (input) => data['email']=input,
                  )
                ],
              )
          ),
        ),

      ),

    );
  }
}
