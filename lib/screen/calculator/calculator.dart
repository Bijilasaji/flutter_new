import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();

  double num1 = 0;
  double num2 = 0;
  double result = 0;
  String operation = '';

  void calculate() {
    setState(() {
      num1 = double.tryParse(textEditingController1.text) ?? 0;
      num2 = double.tryParse(textEditingController2.text) ?? 0;

      if (operation == '+') {
        result = num1 + num2;
      } else if (operation == '-') {
        result = num1 - num2;
      } else if (operation == '*') {
        result = num1 * num2;
      } else if (operation == '/') {
        if (num2 != 0) {
          result = num1 / num2;
        } else {
          result = 0;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator App'),
      ),
      body: Container(
        // margin: EdgeInsets.only(left: 4, right: 4, top: 8, bottom: 8),
        margin: EdgeInsets.all(23),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'Enter First Number',
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'Enter Second Number',
                    border: OutlineInputBorder()),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      operation = '+';
                    },
                    child: Text('+')),
                SizedBox(
                  width: 16,
                ),
                ElevatedButton(
                    onPressed: () {
                      operation = '-';
                    },
                    child: Text('-')),
                SizedBox(
                  width: 16,
                ),
                ElevatedButton(
                    onPressed: () {
                      operation = '*';
                    },
                    child: Text('*')),
                SizedBox(
                  width: 16,
                ),
                ElevatedButton(
                    onPressed: () {
                      operation = '/';
                    },
                    child: Text('/')),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                  onPressed: () {
                    calculate();
                  },
                  child: Text('Submit')),
            ),
            Container(
                margin: EdgeInsets.only(top: 50),
                child: Text(
                  'Result : ${result.toString()}',
                  style: TextStyle(color: Colors.black, fontSize: 24),
                )),
          ],
        ),
      ),
    );
  }
}
