import 'package:flutter/material.dart';
import 'package:flutter1/sharedpreference/homepage.dart';
import 'package:flutter1/sharedpreference/loginpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
  runApp(MyApp(isLoggedIn: isLoggedIn));
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;
  MyApp({required this.isLoggedIn});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/loginpage': (context) => Login1(),
        '/homepage': (context) => Home(),
      },
      initialRoute: isLoggedIn ? '/homepage' : '/loginpage',
    );
  }
}
