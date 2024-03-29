
import 'package:flutter/material.dart';
import 'package:focus_area_app/core/contsans/colors.dart';

class ConverAndTitleAndDisc extends StatelessWidget {
  const ConverAndTitleAndDisc({
    super.key,
    required this.title,
    required this.imagePath,
    required this.discrption,
    required this.index
  });

  final String title ;
  final String imagePath ;
  final String discrption ;
  final int index ;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // cover
        Image.asset(imagePath),

          SizedBox(
          height: 10,
        ),

        // title
        SizedBox(
          width: 250,
          child: Text(
          title,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),

        SizedBox(
          height: 30,
        ),

        // discrption
        SizedBox(
          width: 320,
          child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                TextSpan(

                 text: index == 0 ? 'Make ' : '',
                  
                 
                    style: TextStyle(
                      color: Color(0xffA6A6A6),
                      fontSize: 18,
                    )),
                TextSpan(
                    text: 'Focus Area ',
                    style: TextStyle(
                        color: AppColors.praimryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        discrption,
                    style: TextStyle(
                      color: Color(0xffA6A6A6),
                      fontSize: 16,
                    )),
              ])),
        )
      ],
    );
  }
}