import 'package:flutter/material.dart';

class ColumnEgone extends StatelessWidget {
  const ColumnEgone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(),
      body:
      Container(
        color: Colors.grey,
        width: double.infinity,
        height: double.infinity,
        child:  Column(
          /*mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,//center
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,*/
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 50,
              color: Colors.red,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.yellow,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.green,
            )



          ],
        ),
      )
      ,

    );
  }
}
