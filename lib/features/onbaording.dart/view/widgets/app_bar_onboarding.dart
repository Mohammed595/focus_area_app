

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:focus_area_app/core/contsans/assets_path.dart';
import 'package:focus_area_app/core/contsans/colors.dart';

class AppBarOnBoarding extends StatelessWidget {
  const AppBarOnBoarding({
    super.key,
    required this.skipButton,
  });
    final VoidCallback skipButton ;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: skipButton,
          
          child: const Text(
            'Skip',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppColors.praimryColor,
            ),
          ),
        ),
        Spacer(),
        Center(
          child: SvgPicture.asset(
            AppIcons.logoAppPraimryColor
          ),
        ),
      ],
    );
  }
}
