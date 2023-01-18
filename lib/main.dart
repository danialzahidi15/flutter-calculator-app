// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

Widget calculatorButton(String btnText, Color btnColor, Color textColor) {
  return Container(
    child: ElevatedButton(
      //TODO add function
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        primary: btnColor,
        padding: const EdgeInsets.all(20.0),
      ),
      child: Text(
        btnText,
        style: TextStyle(
          color: textColor,
          fontSize: 35,
        ),
      ),
    ),
  );
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Calculator'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //Calculator display
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    '0',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 100,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calculatorButton('AC', Colors.grey, Colors.black),
                calculatorButton('+/-', Colors.grey, Colors.black),
                calculatorButton('%', Colors.grey, Colors.black),
                calculatorButton('/', Colors.amber.shade700, Colors.white),
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calculatorButton('7', Colors.grey.shade800, Colors.white),
                calculatorButton('8', Colors.grey.shade800, Colors.white),
                calculatorButton('9', Colors.grey.shade800, Colors.white),
                calculatorButton('x', Colors.amber.shade700, Colors.white),
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calculatorButton('4', Colors.grey.shade800, Colors.white),
                calculatorButton('5', Colors.grey.shade800, Colors.white),
                calculatorButton('6', Colors.grey.shade800, Colors.white),
                calculatorButton('-', Colors.amber.shade700, Colors.white),
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calculatorButton('1', Colors.grey.shade800, Colors.white),
                calculatorButton('2', Colors.grey.shade800, Colors.white),
                calculatorButton('3', Colors.grey.shade800, Colors.white),
                calculatorButton('+', Colors.amber.shade700, Colors.white),
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    primary: Colors.grey.shade800,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(34, 10, 108, 10),
                    child: Text(
                      '0',
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                calculatorButton('.', Colors.grey.shade800, Colors.white),
                calculatorButton('=', Colors.amber.shade700, Colors.white),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
