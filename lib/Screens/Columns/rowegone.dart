import 'package:flutter/material.dart';
class RowEgone extends StatelessWidget {
  const RowEgone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(),
      body: Container(
        color: Colors.grey,
        width: double.infinity,
        height: double.infinity,
        child:  Row(
         // mainAxisAlignment: MainAxisAlignment.start,
         // mainAxisAlignment: MainAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.end,
          //crossAxisAlignment: CrossAxisAlignment.start,
         // mainAxisAlignment: MainAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.center,
         // mainAxisAlignment: MainAxisAlignment.end,
          //crossAxisAlignment: CrossAxisAlignment.center,
         // mainAxisAlignment: MainAxisAlignment.start,
         // mainAxisAlignment: MainAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
         // mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 50,
              color: Colors.red,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.deepOrangeAccent,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.pink,
            )
          ],
        ),
      ),
    );
  }
}
