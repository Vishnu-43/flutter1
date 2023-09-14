// import 'package:flutter/material.dart';
// class CheckBoxExamples extends StatefulWidget {
//   const CheckBoxExamples({super.key});
//
//   @override
//   State<CheckBoxExamples> createState() => _CheckBoxExamplesState();
// }
//
// class _CheckBoxExamplesState extends State<CheckBoxExamples> {
//   bool _checkbox=false;
//   bool _checkboxLIstTile=false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("create a checkbox"),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Checkbox(
//                     value: _checkbox,
//                     onChanged: (value){
//                       setState(() {
//                         _checkbox=!_checkbox;
//                       });
//                     },
//                 ),
//                 const Text("l am parent"),
//               ],
//             ),
//             CheckboxListTile(
//                 controlAffinity: ListTileControlAffinity.leading,
//                 title: const Text("l am child"),
//
//                 value: _checkboxLIstTile ,
//                 onChanged: (value){
//                   setState(() {
//                     _checkboxLIstTile= !_checkboxLIstTile;
//                   });
//                 },)
//           ],
//         ),
//       ),
//     )
//   }
// }
