// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
//
// class OnBoardingController extends GetxController {
//   static OnBoardingController get instance => Get.find();
//
//   /// Variables
//   final pageController = PageController();
//   Rx<int> currentPageIndex = 0.obs;
//
//   /// Update Current Index When page Scrool
//   void updatePageIndicator(index) => currentPageIndex.value = index;
//
//   /// Jump to the Specific dot Selected page
//   void dotNavigationClick(index) {
//     currentPageIndex.value = index;
//     pageController.jumpToPage(index);
//   }
//
//   ///update cruttent index & jump to the next  page
//   void nextPage() {
//     if (currentPageIndex.value == 2) {
//       // Get.to(LoginScreen(());
//     }
//     else {
//       int page = currentPageIndex.value + 1;
//       pageController.jumpToPage(page);
//     }}
//     /// Update current index & jump to the last page
//     void skipPage() {
//       currentPageIndex.value = 2;
//       pageController.jumpToPage(3);
//     }
//   }


import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;  // Reactive variable to track the current page index

  @override
  void onInit() {
    super.onInit();
    // Attach a listener to the page controller to update the current page index
    pageController.addListener(() {
      currentPageIndex.value = pageController.page!.round();
    });
  }

  @override
  void onClose() {
    pageController.dispose();  // Important to dispose of the PageController
    super.onClose();
  }

  // Called when page scroll updates
  void updatePageIndicator(int index) => currentPageIndex.value = index;

  // Handles navigation from dot clicks
  void dotNavigationClick(int index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  // Navigate to the next page or to a different screen after the last page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      // Assuming there are only three onboarding pages indexed as 0, 1, 2
      // Navigate to LoginScreen or a similar action
      // Get.to(() => LoginScreen()); // Uncomment and adjust according to your actual navigation target
    } else {
      int nextPage = currentPageIndex.value + 1;
      pageController.jumpToPage(nextPage);
    }
  }

  // Jump directly to the last onboarding page
  void skipPage() {
    currentPageIndex.value = 3;
    pageController.jumpToPage(3);
  }
}
