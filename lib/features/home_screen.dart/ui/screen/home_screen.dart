import 'package:flutter/material.dart';
import 'package:focus_area_app/features/home_screen.dart/ui/widgets/app_bar_home_screen.dart';
import 'package:focus_area_app/features/home_screen.dart/ui/widgets/custom_focus_widget.dart';
import 'package:focus_area_app/features/home_screen.dart/ui/widgets/quick_focus_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
            const EdgeInsets.only(left: 25, right: 25, top: 70, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // app bar
            const AppBarForHomeScreen(),

            const SizedBox(
              height: 10,
            ),

            // quick focus
            GestureDetector(
              onTap: () {
                print('object');
              },
              child: const QuickFocusWidget(),
            ),

            const SizedBox(
              height: 10,
            ),

            // divider
            Divider(
              color: Colors.grey.shade400,
              height: 1,
            ),

            const SizedBox(
              height: 10,
            ),

            const Text('custom'),
            const SizedBox(
              height: 10,
            ),

            // custom focus

           const  CustomFocusWidget(),
          ],
        ),
      ),
    );
  }
}
