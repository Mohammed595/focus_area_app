import 'package:flutter/material.dart';
import 'package:focus_area_app/features/home_screen.dart/ui/widgets/app_bar_home_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 60, bottom: 20),
        child:const Column(
          children:  [
            // app bar
            AppBarForHomeScreen()

            // quick focus


            // divider



            // custom focus
          ],
        ),
      ),
    );
  }
}
