import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:focus_area_app/core/contsans/assets_path.dart';

class CustomFocusWidget extends StatelessWidget {
  const CustomFocusWidget({
    super.key,
    required this.title,
    required this.desc,
    required this.period,
    required this.color
  });

  final String title;
  final String desc ;
  final String period ;
  final String color ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: EdgeInsets.only(top: 10),
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 15),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 230, 183, 183),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          // icon
          const CircleAvatar(
            backgroundColor: Colors.white,
            maxRadius: 30,
          ),

          const SizedBox(
            width: 10,
          ),

           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // title
              Text(
               title,
                style:const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // dic
              Text(
                desc,
                style:const TextStyle(
                  fontSize: 12,
                  color: Color(0xff656F77),
                ),
              ),
            ],
          ),

          const Spacer(),

          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SvgPicture.asset(AppIcons.menuIcon),
             const Spacer(),
              Row(
                children: [
                   Text(
                    '$period M',
                    style:const TextStyle(fontSize: 10, color: Color(0xff656F77)),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  // Spacer(),
                  SvgPicture.asset(
                    AppIcons.timerIcon,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
