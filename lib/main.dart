import 'package:flutter/material.dart';
import 'package:flutter1/Screens/Provider/Providereg2/accountscreen.dart';
import 'package:flutter1/Screens/Provider/Providereg2/settingscreen.dart';
import 'package:flutter1/Screens/Speechtotext/speechtotext.dart';
import 'package:flutter1/Screens/Table/table_sample.dart';
import 'package:flutter1/Screens/Table/table_sample2.dart';
import 'package:flutter1/Screens/Texttospeech/texttospeech.dart';
import 'package:flutter_tts/flutter_tts.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AccountScreen(),
      routes: {
        'accountscreen':(context)=>AccountScreen(),
        'settingscreen':(context)=>SettingScreen(),
      },
    );
  }
}
