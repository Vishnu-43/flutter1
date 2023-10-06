import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(onPressed: () {
            Navigator.of(context).pushReplacementNamed('accountscreen');
          }, child: Icon(Icons.account_circle,color: Colors.white,)),
          TextButton(onPressed: () {
            Navigator.of(context).pushReplacementNamed('settingscreen');
          }, child: Icon(Icons.settings,color: Colors.white,))
        ],),
    );
  }
}
