import 'package:flutter/material.dart';
class SplashScreenWhats extends StatefulWidget {
  const SplashScreenWhats({super.key});

  @override
  State<SplashScreenWhats> createState() => _SplashScreenWhatsState();
}

class _SplashScreenWhatsState extends State<SplashScreenWhats> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          SizedBox(
            height: 200,
          ),

          SizedBox(
            width:100,
              height: 100,
              child: Image(image: AssetImage('assets/images/whatsapp4.jpeg')))
        ],
      ),
    );
  }
}
