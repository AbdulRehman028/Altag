import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Auth/signup_view.dart';
import '../Auth/signup_view_afternoon.dart';
import '../Auth/signup_view_evening.dart';
import 'onboarding_controller.dart';
import 'onboarding_dot_navigation.dart';
import 'onboarding_pages.dart';
import 'onboarding_skip.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(image: 'assets/1.png', title: 'Book services anywhere, anytime!', description: 'With our app, scheduling is always at your fingertips.'),
              OnBoardingPage(image: 'assets/2.png', title: 'Order cosmetics directly from our app!', description: 'Enjoy the convenience of browsing and purchasing top-quality products with just a few taps.'),
              OnBoardingPage(image: 'assets/3.png', title: 'Discover our top-tier masters artistry!', description: 'Skilled professionals dedicated to crafting your perfect look.'),
              OnBoardingPage(image: 'assets/4.png', title: 'Easy payments and points system!', description: 'Effortlessly pay for services and unlock bonuses with our points system – all within our app.'),
            ],
          ),
          const OnBoardingSkip(),
          const OnBoardingDotnavigation(),
          Positioned(
            top: 50,
            left: 10,
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                if (controller.pageController.page != 0) {
                  controller.pageController.previousPage(duration: const Duration(milliseconds: 300), curve: Curves.ease);
                }
              },
            ),
          ),
          Positioned(
            bottom: 75,
            right: 50,
            left: 50,
            child: Obx(() {
              return controller.currentPageIndex.value == 3 ? Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black,
                    // width: 2.0,
                  ),
                ),
                child: SizedBox(
                  width: 343,
                  height: 44,
                  child: ElevatedButton(
                    onPressed: navigateBasedOnTime,
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child:  Text(
                      'NEXT',
                      style: TextStyle(
                        fontFamily: GoogleFonts.manrope().fontFamily,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2D3D50),
                      ),
                    ),
                  ),
                ),
              ) : SizedBox.shrink();
            }),
          ),
        ],
      ),
    );
  }
  void navigateBasedOnTime() {
    DateTime now = DateTime.now();
    print("Current hour: ${now.hour}");  // Debugging statement
    try {
      if (now.hour >= 0 && now.hour < 12) {
        print("Navigating to SignupPage");
        Get.to(() => SignupPage());
      } else if (now.hour >= 12 && now.hour < 17) {
        print("Navigating to SignupPageAfternoon");
        Get.to(() => SignupPageAfternoon());
      } else if (now.hour >= 17 && now.hour < 24) {
        print("Navigating to SignupPageEvening");
        Get.to(() => SignupPageEvening());
      } else {
        Get.snackbar('Info', 'Sign-up is not available at this time.');
      }
    } catch (e) {
      print('Failed to navigate: $e');
    }
  }


// void navigateBasedOnTime() {
  //   DateTime now = DateTime.now();
  //   // Define time ranges for navigation logic
  //   if (now.hour >= 0 && now.hour < 12) {
  //     Get.to(() => SignupPage());
  //   } else if (now.hour >= 12 && now.hour < 17) {
  //     Get.to(() => SignupPageAfternoon());
  //   } else if (now.hour >= 17 && now.hour < 24) {
  //     Get.to(() => SignupPageEvening());
  //   } else {
  //     // Optionally handle late night times, e.g., show an error or default page
  //     Get.snackbar('Info', 'Sign-up is not available at this time.');
  //   }
  // }
}
