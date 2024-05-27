import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image, title, description;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 375.0,
            height: 375.0,
          ),
          const SizedBox(height: 50.0),
          Text(
            title,
            textAlign: TextAlign.center,
            style:  TextStyle(
              fontFamily: GoogleFonts.manrope().fontFamily,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style:  TextStyle(
              fontFamily: GoogleFonts.manrope().fontFamily,
              fontSize: 16.0,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
