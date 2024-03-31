
import 'package:flutter/material.dart';

class TitleForForm extends StatelessWidget {
  const TitleForForm({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Color(0xff828282),
        fontSize: 15,
      ),
    );
  }
}
