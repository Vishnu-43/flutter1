import 'package:flutter/material.dart';
import 'package:flutter1/Screens/Assignment/assignment_q1.dart';
import 'package:flutter1/Screens/Assignment/assignment_q2.dart';
import 'package:flutter1/Screens/Columns/buttonsampleeg2.dart';
import 'package:flutter1/Screens/Columns/columnegone.dart';
import 'package:flutter1/Screens/Columns/rowegone.dart';
import 'package:flutter1/Screens/Columns/textfield.dart';
import 'package:flutter1/Screens/Provider/counter_pg.dart';
import 'package:flutter1/Screens/Provider/homepage.dart';
import 'package:flutter1/Screens/Provider/notifier_pg.dart';
import 'package:flutter1/Screens/alertdialog.dart';
import 'package:flutter1/Screens/calculatordesign.dart';
import 'package:flutter1/Screens/centerwidget.dart';
import 'package:flutter1/Screens/checkboxeg1.dart';
import 'package:flutter1/Screens/columnwidget.dart';
import 'package:flutter1/Screens/containerwidget.dart';
import 'package:flutter1/Screens/drawer.dart';
import 'package:flutter1/Screens/formexample2.dart';
import 'package:flutter1/Screens/formsample.dart';
import 'package:flutter1/Screens/gesturesample.dart';
import 'package:flutter1/Screens/gridview.dart';
import 'package:flutter1/Screens/iconsample.dart';
import 'package:flutter1/Screens/imageflutter.dart';
import 'package:flutter1/Screens/listviewsample.dart';
import 'package:flutter1/Screens/networkimg.dart';
import 'package:flutter1/Screens/popupmenu.dart';
import 'package:flutter1/Screens/q4uizappeg.dart';
import 'package:flutter1/Screens/quizappeg1.dart';
import 'package:flutter1/Screens/quizappeg2.dart';
import 'package:flutter1/Screens/quizappeg3.dart';
import 'package:flutter1/Screens/radiobutton.dart';
import 'package:flutter1/Screens/second_screen.dart';
import 'package:flutter1/Screens/tabbar.dart';
import 'package:flutter1/Screens/textsample.dart';
import 'package:flutter1/Screens/whatsappchat.dart';
import 'package:flutter1/Whatsappclone/whatsapphome.dart';
import 'package:flutter1/Whatsappclone/whatsappsplash.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter provider Demo',
        home:MyHomePage()
      ),
  }
}

