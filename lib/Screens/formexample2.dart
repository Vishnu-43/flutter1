import 'package:flutter/material.dart';
class FormSampleTwo extends StatefulWidget {
  const FormSampleTwo({super.key});

  @override
  State<FormSampleTwo> createState() => _FormSampleTwoState();
}

class _FormSampleTwoState extends State<FormSampleTwo> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('form method'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.face_2),
                  hintText: 'Enter your name',
                  labelText: 'Name',
                ),
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.phone_android),
                hintText: 'Enter a phone number',
                labelText: 'Phone',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.calendar_today),
                hintText: 'Enter your DOB',
                labelText: 'DOB',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.email),
                hintText: 'Enter your email',
                labelText:'Email'
              ),
            ),
            ElevatedButton(onPressed: () {
              _formKey.currentState!.validate();

              
            }, child: Text("Login"))
            ],
        ),
      ),
    );
  }
}
