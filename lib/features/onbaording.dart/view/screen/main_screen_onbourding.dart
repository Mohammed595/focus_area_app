import 'package:flutter/material.dart';
import 'package:focus_area_app/core/contsans/assets_path.dart';
import 'package:focus_area_app/core/contsans/colors.dart';
import 'package:focus_area_app/core/routring/routers.dart';
import 'package:focus_area_app/features/onbaording.dart/view/widgets/app_bar_onboarding.dart';
import 'package:focus_area_app/features/onbaording.dart/view/widgets/btn_onboarding.dart';
import 'package:focus_area_app/features/onbaording.dart/view/widgets/cover_title_disc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainPageOnBoarding extends StatefulWidget {
  const MainPageOnBoarding({super.key});

  @override
  State<MainPageOnBoarding> createState() => _MainPageOnBoardingState();
}

class _MainPageOnBoardingState extends State<MainPageOnBoarding> {
  int indexOfPage = 0;
  PageController pageController = PageController();

  void toGoAnotherPage(int index) {
    pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 200),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 60, bottom: 40),
        child: Column(
          children: [
            // app bar
            AppBarOnBoarding(
              skipButton: () {
                setState(() {
                  indexOfPage = 2;
                  // i can make it as anmited but this enughf
                   pageController.jumpToPage(indexOfPage);
                  
                });
              },
            ),

            const SizedBox(
              height: 70,
            ),

            // midum
            SizedBox(
              height: 450,
              child: PageView(
                controller: pageController,
                onPageChanged: (value) {
                  setState(() {
                    indexOfPage = value;
                    toGoAnotherPage(indexOfPage);
                  });
                },
                children: [
                  ConverAndTitleAndDisc(
                    title: 'Every minute improves and adds',
                    discrption:
                        'your daily companion on the journey of continuity and goal achievement',
                    imagePath: AppImages.firstCoverImage,
                    index: indexOfPage,
                  ),
                  ConverAndTitleAndDisc(
                    title: 'Check your progress',
                    discrption:
                        'provides you daily motivation to stay focused and keep improving',
                    imagePath: AppImages.seconCoverImage,
                    index: indexOfPage,
                  ),
                  ConverAndTitleAndDisc(
                    title: 'Every moment is a new opportunity',
                    discrption:
                        'helps you invest your time smartly to improve your quality of life.',
                    imagePath: AppImages.thirdCoverImage,
                    index: indexOfPage,
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            // points
            SmoothPageIndicator(
              controller: pageController,
              count: 3,
              effect: const WormEffect(
                dotHeight: 8,
                dotWidth: 8,
                activeDotColor: AppColors.praimryColor,
              ),
              onDotClicked: (index) {
                setState(() {
                  indexOfPage = index;
                  toGoAnotherPage(indexOfPage);
                });
              },
            ),

            const SizedBox(
              height: 40,
            ),

            // button
            GestureDetector(
              onTap: () {
                setState(() {
                  if (indexOfPage == 0) {
                    indexOfPage = 1;
                    toGoAnotherPage(indexOfPage);
                  } else if (indexOfPage == 1) {
                    indexOfPage = 2;
                    toGoAnotherPage(indexOfPage);
                  } else {
                    // go to get start
                    Navigator.of(context)
                        .pushReplacementNamed(Routers.homeScreen);
                  }
                });
              },
              child: ButtonOnBoarding(
                title: indexOfPage == 2 ? ' Get Start' : 'Continuent',
              ),
            )
          ],
        ),
      ),
    );
  }
}
