import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'boardinggetx.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Get.off(() => OnBoardingScreen());  // Using GetX for navigation
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/logo.png', width: 150, height: 150), // Your logo here
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
