import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:focus_area_app/core/contsans/assets_path.dart';

class CustomFocusWidget extends StatelessWidget {
  const CustomFocusWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
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

          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // title
              Text(
                'Quick',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // dic
              Text(
                'I want to focus now',
                style: TextStyle(
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
              Spacer(),
              Row(
                children: [
                  const Text(
                    '30M',
                    style: TextStyle(fontSize: 10, color: Color(0xff656F77)),
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
