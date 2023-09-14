// import 'package:flutter/material.dart';
// class FormSampleEg extends StatefulWidget {
//   const FormSampleEg({super.key});
//
//   @override
//   State<FormSampleEg> createState() => _FormSampleEgState();
// }
//
// class _FormSampleEgState extends State<FormSampleEg> {
//   var _loginForm=GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Form design"),
//       ),
//       body: Form(
//         key: _loginForm,
//         child:Column(
//           children: [
//            Padding(
//              padding: const EdgeInsets.all(8.0),
//              child: TextFormField(
//                validator: (value){
//                  if(value!.isEmpty){
//                    return 'Please enter email';
//                  }
//                  if(!value.contains('@gmail.com')){
//                    return 'Please enter valid email';
//                  }
//                  return null;
//                },
//
//                ),
//              ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextFormField(
//                 validator: (value){
//                   RegExp regex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])');
//                   if(value!.isEmpty){
//                     return 'Please enter password';
//                   }
//                   else{
//                     return null;
//                   }
//
//                 }
//                 return null;
//
//
//               ),
//             )
//             ElevatedButton(onPressed: (){
//               setState(() {
//                 if(_loginForm.currentState!.validate()){
//                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("success")))
//                 }
//               });
//             }, child: child)
//           ],
//
//         )
//       ),
//     );
//   }
// }
