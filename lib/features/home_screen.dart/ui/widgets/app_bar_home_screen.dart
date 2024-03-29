
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:focus_area_app/core/contsans/assets_path.dart';
import 'package:focus_area_app/core/contsans/colors.dart';

class AppBarForHomeScreen extends StatelessWidget {
  const AppBarForHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,          
      width: double.infinity,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          const Text(
            'Focus',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.praimryColor,
            ),
          ),
          Positioned(
            right:70,
            child: SvgPicture.asset(AppIcons.peperAirPlaneIcon),
          ),
        ],
      ),
    );
  }
}
