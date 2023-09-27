import 'package:flutter/material.dart';
import 'package:flutter1/Screens/Provider/accountscreen.dart';
import 'package:flutter1/Screens/Provider/settingscreen.dart';
import 'package:provider/provider.dart';
import 'navbar.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider <Data>(
        create: (context)=> Data(),
    child: MaterialApp(home:AccountScreen(),routes:{
      'account_screen':(context)=>AccountScreen(),
      'setting_screen':(context)=>SettingScreen(),

    }),
    );
  }
}
class Data extends ChangeNotifier{
  Map data={
    'name': 'Sammy Shark',
    'email': 'example@example.com',
    'age':42
  };
  void updateAccount(input){
    data=input;
    notifyListeners();
  }
}


