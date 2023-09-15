import 'package:flutter/material.dart';
class CalculatorSample extends StatefulWidget {
  const CalculatorSample({super.key});

  @override
  State<CalculatorSample> createState() => _CalculatorSampleState();
}

class _CalculatorSampleState extends State<CalculatorSample> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('calculator'),
      ),
      body: Column(
        children: [
          SizedBox(height: 300),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 85,
                  height: 85,
                child: ElevatedButton(onPressed:() {print("C");}, child: Text('C'))),
                SizedBox(
                  width: 85,
                    height: 85,
                    child: ElevatedButton(onPressed: () => {}, child: Text("00"))),
                SizedBox(width: 85,
                    height: 85,
                    child: ElevatedButton(onPressed: () => {}, child: Text("%"))),
                SizedBox(width: 85,
                    height: 85,
                    child: ElevatedButton(onPressed: () => {}, child: Text("<--"))),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    width: 85,
                    height: 85,
                    child: ElevatedButton(onPressed:() {print("7");}, child: Text('7'))),
                SizedBox(
                    width: 85,
                    height: 85,
                    child: ElevatedButton(onPressed: () => {}, child: Text("8"))),
                SizedBox(width: 85,
                    height: 85,
                    child: ElevatedButton(onPressed: () => {}, child: Text("9"))),
                SizedBox(width: 85,
                    height: 85,
                    child: ElevatedButton(onPressed: () => {}, child: Text("/"))),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    width: 85,
                    height: 85,
                    child: ElevatedButton(onPressed:() {print("4");}, child: Text('4'))),
                SizedBox(
                    width: 85,
                    height: 85,
                    child: ElevatedButton(onPressed: () => {}, child: Text("5"))),
                SizedBox(width: 85,
                    height: 85,
                    child: ElevatedButton(onPressed: () => {}, child: Text("6"))),
                SizedBox(width: 85,
                    height: 85,
                    child: ElevatedButton(onPressed: () => {}, child: Text("*"))),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    width: 85,
                    height: 85,
                    child: ElevatedButton(onPressed:() {print("1");}, child: Text('1'))),
                SizedBox(
                    width: 85,
                    height: 85,
                    child: ElevatedButton(onPressed: () => {}, child: Text("2"))),
                SizedBox(width: 85,
                    height: 85,
                    child: ElevatedButton(onPressed: () => {}, child: Text('3'))),
                SizedBox(width: 85,
                    height: 85,
                    child: ElevatedButton(onPressed: () => {}, child: Text("-"))),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    width: 85,
                    height: 85,
                    child: ElevatedButton(onPressed:() {print(".");}, child: Text('.'))),
                SizedBox(
                    width: 85,
                    height: 85,
                    child: ElevatedButton(onPressed: () => {}, child: Text("0"))),
                SizedBox(width: 85,
                    height: 85,
                    child: ElevatedButton(onPressed: () => {}, child: Text("="))),
                SizedBox(width: 85,
                    height: 85,
                    child: ElevatedButton(onPressed: () => {}, child: Text("+"))),
              ],
            ),
          ),
        ],
      ),

    );
  }
}
