import 'package:flutter/material.dart';
import 'package:flutter1/Screens/Calender/calendersample1.dart';
import 'package:flutter1/Screens/Calender/calendersample2.dart';
import 'package:flutter1/Screens/Flashlightapp/flash_light_sample2.dart';
import 'package:flutter1/Screens/Flashlightapp/flash_lightsamp1.dart';
import 'package:flutter1/Screens/Getx/homepage.dart';
import 'package:flutter1/Screens/Provider/Providereg2/accountscreen.dart';
import 'package:flutter1/Screens/Provider/Providereg2/changenotifiet2.dart';
import 'package:flutter1/Screens/Provider/Providereg2/settingscreen.dart';
import 'package:flutter1/Screens/Speechtotext/speechtotext.dart';
import 'package:flutter1/Screens/Sqlite/sqlflitehome.dart';
import 'package:flutter1/Screens/Table/table_sample.dart';
import 'package:flutter1/Screens/Table/table_sample2.dart';
import 'package:flutter1/Screens/Texttospeech/texttospeech.dart';
import 'package:flutter1/Screens/Toastnotification/toastnotification.dart';
import 'package:flutter1/Screens/VideoPlayer/videoplay.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: VideoPlaySample()
      // routes: {
      //   'accountscreen':(context)=>AccountScreen(),
      //   'settingscreen':(context)=>SettingScreen(),
      // },
    );
  }
}
