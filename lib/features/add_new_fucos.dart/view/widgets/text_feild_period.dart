import 'package:flutter/material.dart';

class TextFieldForPeriod extends StatelessWidget {
  const TextFieldForPeriod({
    super.key,
    required this.textControllerM,
  });

  final TextEditingController textControllerM;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 100,
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
        controller: textControllerM,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: 'munits',
          hintStyle:  TextStyle(
            color: Color(0xff828282),
            fontSize: 16,
          ),
          counterText: '',
        ),
      ),
    );
  }
}
