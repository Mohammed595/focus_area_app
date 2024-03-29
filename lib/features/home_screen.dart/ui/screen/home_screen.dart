import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:focus_area_app/features/home_screen.dart/ui/widgets/app_bar_home_screen.dart';
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
              child: QuickFocusWidget(),
            ),

            SizedBox(
              height: 20,
            ),

            // divider
            Divider(
              color:Colors.grey,
              height: 1,
            )

            // custom focus
          ],
        ),
      ),
    );
  }
}
