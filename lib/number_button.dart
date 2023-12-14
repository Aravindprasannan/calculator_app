import 'package:flutter/material.dart';

class NumberButton extends StatelessWidget {
  const NumberButton({super.key, required this.onPress ,required this.number});
final String number;
final Function onPress;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onPress(number);
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(color: Colors.white,width: 2),
          borderRadius: BorderRadius.circular(10),
        ),

        child: Text(number,
          style: const TextStyle(fontWeight: FontWeight.w500,
              fontSize:20 ),),),
    );
  }
}
