
import 'package:flutter/material.dart';
import 'package:focus_area_app/core/contsans/colors.dart';

class SaveBtn extends StatelessWidget {
  const SaveBtn({
    super.key,
    required this.func,
  });

  final VoidCallback func ;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: func,
        child: Container(
            alignment: Alignment.center,
            width: 100,
            height: 40,
            decoration: BoxDecoration(
                color: AppColors.praimryColor,
                borderRadius: BorderRadius.circular(10)),
            child: const Text(
              'Save',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            )),
      ),
    );
  }
}
