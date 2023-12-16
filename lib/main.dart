import 'package:calculator_app/number_button.dart';
import 'package:flutter/material.dart';

void main() => runApp(const CalculatorApp());

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'calculator',
        home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.teal,
            title: const Text(
              "calculator",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 25,
              ),
            ),
          ),
          body: const CalculatorUI(),
        ));
  }
}

class CalculatorUI extends StatefulWidget {
  const CalculatorUI({super.key});

  @override
  State<CalculatorUI> createState() => _CalculatorUIState();
}

class _CalculatorUIState extends State<CalculatorUI> {
  num result = 0;
  num number = 0;
  String operation = "";
  num temp = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(color: Colors.white, width: 2),
            ),
            height: 150,
            width: double.infinity,
            child: Text(
              result.toStringAsFixed(2),
              style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 32,
                  color: Colors.white),
            ),
          ),
          const SizedBox(height: 24),
          Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NumberButton(
                  number: "1",
                  onPress: (String result) {
                    setState(() {
                      this.result = 0;
                      number = num.parse(result);
                    });
                  },
                ),
                NumberButton(
                  number: "2",
                  onPress: (String result) {
                    setState(() {
                      this.result = 0;
                      number = num.parse(result);
                    });
                  },
                ),
                NumberButton(
                  number: "3",
                  onPress: (String result) {
                    setState(() {
                      this.result = 0;
                      number = num.parse(result);
                    });
                  },
                ),
                NumberButton(
                  number: "+",
                  onPress: (String op) {
                    temp = number;
                    operation = op;
                  },
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NumberButton(
                  number: "4",
                  onPress: (String result) {
                    setState(() {
                      this.result = 0;
                      number = num.parse(result);
                    });
                  },
                ),
                NumberButton(
                  number: "5",
                  onPress: (String result) {
                    setState(() {
                      this.result = 0;
                      number = num.parse(result);
                    });
                  },
                ),
                NumberButton(
                  number: "6",
                  onPress: (String result) {
                    setState(() {
                      this.result = 0;
                      number = num.parse(result);
                    });
                  },
                ),
                NumberButton(
                  number: "-",
                  onPress: (String op) {
                    temp = number;
                    operation = op;
                  },
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NumberButton(
                  number: "7",
                  onPress: (String result) {
                    setState(() {
                      this.result = 0;
                      number = num.parse(result);
                    });
                  },
                ),
                NumberButton(
                  number: "8",
                  onPress: (String result) {
                    setState(() {
                      this.result = 0;
                      number = num.parse(result);
                    });
                  },
                ),
                NumberButton(
                  number: "9",
                  onPress: (String result) {
                    setState(() {
                      this.result = 0;
                      number = num.parse(result);
                    });
                  },
                ),
                NumberButton(
                  number: "*",
                  onPress: (String op) {
                    temp = number;
                    operation = op;
                  },
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NumberButton(
                  number: ".",
                  onPress: (String number) {},
                ),
                NumberButton(
                  number: "0",
                  onPress: (String result) {
                    setState(() {
                      this.result = 0;
                      number = num.parse(result);
                    });
                  },
                ),
                NumberButton(
                  number: "/",
                  onPress: (String op) {
                    result = number;
                    operation = op;
                  },
                ),
                NumberButton(
                  number: "=",
                  onPress: (_) {
                    switch (operation) {
                      case "+":
                        result = temp + number;
                        break;
                      case "-":
                        result = temp - number;
                        break;
                      case "*":
                        result = temp * number;
                        break;
                      case "/":
                        result = temp / number;
                      default:
                        result = 0;
                    }
                    setState(() {});
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
