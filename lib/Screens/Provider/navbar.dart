import 'package:flutter/material.dart';

import 'accountscreen.dart';

class NavbarSample extends StatelessWidget {
  const NavbarSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          TextButton(
            onPressed: ()=>
            Navigator.pushReplacement(context,AccountScreen.id),
            child: Icon(Icons.settings,color: Colors.white,),
          ),
        ],
      ),
    );
  }
}
