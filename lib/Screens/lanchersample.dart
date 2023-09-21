// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
// class OpenWebPage extends StatefulWidget {
//   const OpenWebPage({super.key});
//
//   @override
//   State<OpenWebPage> createState() => _OpenWebPageState();
// }
//
// class _OpenWebPageState extends State<OpenWebPage> {
//   var url="https://www.javatpoint.com/flutter-dart-programming";
//   openWebPage()async{
//     await launchUrl(
//       Uri.parse(url)
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(onPressed: () {
//               setState(() {
//                 openWebPage();
//               });
//             }, child: Text("Javatpoint"))
//           ],
//         ),
//       ),
//     ) ;
//   }
// }
