import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:focus_area_app/core/contsans/assets_path.dart';
import 'package:focus_area_app/core/contsans/colors.dart';
import 'package:focus_area_app/core/routring/routers.dart';
import 'package:focus_area_app/features/onbaording.dart/data/local_data_source.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

 
 

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 2),
      () {
        // go to another screen
        // in future after check if showed onBourding or no
        Navigator.pushReplacementNamed(
            context,
            SharedPrefServ.checkonBoardingState() == false
                ? Routers.onBoadingScreen
                : Routers.homeScreen);
      },
    );
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
