import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'onboarding_controller.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 50.0,
      right: 10.0,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child:  Text(
          'Skip',
          style: TextStyle(
            fontFamily: GoogleFonts.manrope().fontFamily,
            color: Colors.grey,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
