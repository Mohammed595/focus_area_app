
import 'package:flutter/material.dart';

class CustomTextFeildOfAddNewFocus extends StatelessWidget {
  const CustomTextFeildOfAddNewFocus({super.key, required this.isDic,
  required this.textEdConlr,
  });

  final bool isDic;
  final TextEditingController textEdConlr ;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 45,
      width: double.infinity,
      padding: const EdgeInsets.only(top: 1, bottom: 1, left: 8, right: 8),
      alignment: Alignment.centerRight,

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromARGB(255, 248, 247, 247),
          border: Border.all(
            color: Color.fromARGB(255, 132, 206, 142),
          )),

      // form
      child: TextField(
        controller: textEdConlr,
        maxLines: isDic ? 2 : 1,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: isDic ? 'Add disc' : 'Add title',
          hintStyle: TextStyle(
            color: Color(0xff828282),
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
