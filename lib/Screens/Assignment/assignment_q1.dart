import 'package:flutter/material.dart';

class AssignmentSampleOne extends StatefulWidget {
  const AssignmentSampleOne({super.key});

  @override
  State<AssignmentSampleOne> createState() => _AssignmentSampleOneState();
}

class _AssignmentSampleOneState extends State<AssignmentSampleOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Row(
            children: [
              Column(
                children: [
                  Icon(Icons.save),
                  Container(
                    child: Text("savefirst "),

                  )
                ],
              ),
              Column(
                children: [
                  Icon(Icons.save),
                  Container(
                    child: Text("savesecond"),

                  )
                ],
              ),
              Column(
                children: [
                  Icon(Icons.save),
                  Container(
                    child: Text("savethird"),

                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
