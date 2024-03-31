import 'package:flutter/material.dart';

class InputPeriod extends StatelessWidget {
  const InputPeriod(
      {super.key, required this.isMinute, required this.textController});

  // condiotal don't up on 2 number  (m: <=60 , h: <= 3)
  final bool isMinute;
  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 70,
      padding: const EdgeInsets.only(top: 1, bottom: 1, left: 8, right: 8),

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromARGB(255, 248, 247, 247),
          border: Border.all(
            color: Color.fromARGB(255, 132, 206, 142),
          )),

      // form
      child: TextField(
        maxLength: 2,
        controller: textController,
        keyboardType: TextInputType.number,
        
       
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: isMinute ? 'M' : 'H',
          hintStyle: const TextStyle(
            color: Color(0xff828282),
            fontSize: 16,
          ),
          counterText: '', 
        ),
      ),
    );
  }
}
