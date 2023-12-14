import 'package:calculator_app/digit_row_set.dart';
import 'package:calculator_app/number_button.dart';
import 'package:flutter/material.dart';

void main()=> runApp( const CalculatorApp());


class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'calculator',
      home:CalculatorUI(),
    );
  }
}
class CalculatorUI extends StatefulWidget {
  const CalculatorUI({super.key});

  @override
  State<CalculatorUI> createState() => _CalculatorUIState();
}

class _CalculatorUIState extends State<CalculatorUI> {
  num result =0;
  num number=0;
  String operation="";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar:AppBar (
      backgroundColor: Colors.teal,
      centerTitle: true ,
      title:const Text("calculator",
      style: TextStyle(fontWeight:FontWeight.w700,
          fontSize: 25,color:Colors.white),),),
    backgroundColor: Colors.black,
      body:SafeArea(
        child: Column(
          children: [
            Container(
              margin:  const EdgeInsets.all(16),
            padding: const EdgeInsets.all(16),
            decoration:  BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(color: Colors.white,width: 2),
            ),
            height: 150,
            width: double.infinity,
            child: Text(number.toStringAsFixed(2),
              style: const TextStyle(fontWeight: FontWeight.w700,
                  fontSize: 32,color: Colors.white),),
                  ),
            const SizedBox(height: 24),
          DigitRowSet(first: "1", second: "2", third: "3",
              fourth: "+",
              onPress: (String result,String op){
            operation= op;
            setState(() {
           number=num.parse(result);
         });
        }),
            DigitRowSet(first: "4", second: "5", third: "6",
         fourth: "-",
                onPress: (String result,String op){
              operation= op;
                  setState(() {
                    number=num.parse(result);
                  });
        }),
       DigitRowSet(first: "7", second: "8", third: "9",
       fourth: "*",
           onPress: (String result,String op) {
         operation=op;
             setState(() {
               number=num.parse(result);
             });
        }),
       DigitRowSet(first: ".", second: "0", third: "/",
       fourth: "=",
       onPress: (String result, String op){
         operation=op;
             setState(() {
               number=num.parse(result);
             });
          })

          ],
        ),
    ),
    );
  }
}
