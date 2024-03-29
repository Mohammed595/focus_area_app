

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:focus_area_app/core/contsans/assets_path.dart';
import 'package:focus_area_app/core/contsans/colors.dart';
import 'package:focus_area_app/core/routring/routers.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {


    Future.delayed (Duration(seconds: 2), () {
      // go to another screen
      // in future after check if showed onBourding or no
          Navigator.pushReplacementNamed(context, Routers.onBoadingScreen);
    },);
    return Scaffold(
      backgroundColor: AppColors.praimryColor,
      body: Center(
        child: SvgPicture.asset(
          AppIcons.logoWithNameIcon,
        ),
      ),
    );
  }
}