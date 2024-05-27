import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'onboarding_controller.dart';

class OnBoardingDotnavigation extends StatelessWidget {
  const OnBoardingDotnavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;

    return Positioned(
        bottom: 20.0,
        left: 200,
        child: SmoothPageIndicator(
          count: 4,
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          effect: const WormEffect(
              dotWidth: 16.0,
              dotHeight: 16.0,
              activeDotColor: Color(0xFF2D3D50),
              dotColor: Colors.grey,
              spacing: 8.0),
        ));
  }
}
