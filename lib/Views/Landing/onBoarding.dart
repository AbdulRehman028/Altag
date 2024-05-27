// // import 'package:flutter/gestures.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter_svg/svg.dart';
// // import 'package:get/get.dart';
// // import 'package:google_fonts/google_fonts.dart';
// //
// // import '../../Constants/assets.dart';
// // import '../../Constants/colors.dart';
// // import '../Auth/signup_view.dart';
// //
// //
// //
// // class OnBoardingView extends StatelessWidget {
// //   const OnBoardingView({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //
// //       body: Container(
// //         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
// //         width: double.infinity,
// //         height: MediaQuery.of(context).size.height,
// //         color: AppColors.whiteColor,
// //         child: SingleChildScrollView(
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.end,
// //             children: [
// //               const SizedBox(height: 100),
// //               Text(
// //                 "JourneyInsight",
// //                 textAlign: TextAlign.center,
// //                 style: TextStyle(
// //                     fontFamily: GoogleFonts.inter(
// //                       fontWeight: FontWeight.w500,
// //                     ).fontFamily,
// //                     color: AppColors.mainColor,
// //                     fontSize: 33),
// //               ),
// //               const SizedBox(height: 50),
// //               SvgPicture.asset(
// //                 AppAssets.splashSvg,
// //                 height: MediaQuery.sizeOf(context).height * 0.4,
// //               ),
// //               const SizedBox(height: 1),
// //               RichText(
// //                 textAlign: TextAlign.center,
// //                 text: TextSpan(
// //                   style: TextStyle(
// //                     fontFamily: GoogleFonts.inter(
// //                       fontWeight: FontWeight.w700,
// //                     ).fontFamily,
// //                     fontSize: 19,
// //                   ),
// //                   children: const <TextSpan>[
// //                     TextSpan(
// //                       text: "Take",
// //                       style: TextStyle(color: AppColors.primaryFontColor),
// //                     ),
// //                     TextSpan(
// //                       text: " Control of Your ",
// //                       style: TextStyle(
// //                         color: AppColors.mainColor,
// //                       ),
// //                     ),
// //                     TextSpan(
// //                       text: "Earnings",
// //                       style: TextStyle(color: AppColors.primaryFontColor),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //               const SizedBox(height: 2),
// //               Text(
// //                 "Journey Insight empowers drivers and gig workers to track income & expenses for a clearer financial picture.",
// //                 textAlign: TextAlign.center,
// //                 style: TextStyle(
// //                     fontFamily: GoogleFonts.inter(
// //                       fontWeight: FontWeight.w400,
// //                     ).fontFamily,
// //                     color: AppColors.placeHolderColor,
// //                     fontSize: 12),
// //               ),
// //               const SizedBox(
// //                   height: 90
// //               ),
// //               InkWell(
// //                 onTap: () => Get.off(() => const SignupView()),
// //                 child: Container(
// //                   padding: const EdgeInsets.symmetric(horizontal: 15),
// //                   height: 60,
// //                   width: double.infinity,
// //                   decoration: BoxDecoration(
// //                     color: AppColors.mainColor,
// //                     borderRadius: BorderRadius.circular(8),
// //                   ),
// //                   child: Row(
// //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                     children: [
// //                       Text(
// //                         "Get Started",
// //                         textAlign: TextAlign.left,
// //                         style: TextStyle(
// //                           fontFamily: GoogleFonts.inter(
// //                             fontWeight: FontWeight.w800,
// //                           ).fontFamily,
// //                           fontSize: 16,
// //                           color: AppColors.whiteColor,
// //                         ),
// //                       ),
// //                       const Icon(Icons.arrow_forward, color: AppColors.whiteColor,)
// //                     ],
// //                   ),
// //                 ),
// //               ),
// //               const SizedBox(
// //                   height: 10
// //               ),
// //
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'onboarding_dot_navigation.dart';
// import 'onboarding_controller.dart';
// import 'onboarding_pages.dart';
// import 'onboarding_skip.dart';
//
// class OnBoardingScreen extends StatelessWidget {
//   const OnBoardingScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(OnBoardingController());
//
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Horizontal Scrollable pages
//           PageView(
//             controller: controller.pageController,
//             onPageChanged: controller.updatePageIndicator,
//             children: const [
//               OnBoardingPage(
//                 image: 'assets/1.png',
//                 title: 'Book services anywhere, anytime! ',
//                 description: 'With our app, scheduling is always at your fingertips.',
//               ),
//               OnBoardingPage(
//                 image: 'assets/2.png',
//                 title: 'Order cosmetics directly from our app!',
//                 description: 'Enjoy the convenience of browsing and purchasing top-quality products with just a few taps.',
//               ),
//               OnBoardingPage(
//                 image: 'assets/3.png',
//                 title: 'Discover our top-tier masters artistry!',
//                 description: 'Skilled professionals dedicated to crafting your perfect look.',
//               ),
//               OnBoardingPage(
//                 image: 'assets/4.png',
//                 title: 'Easy payments and points system!',
//                 description: 'Effortlessly pay for services and unlock bonuses with our points system – all within our app.',
//
//               ),
//             ],
//           ),
//           // Skip button
//           const OnBoardingSkip(),
//           // Smooth page indicator
//           const OnBoardingDotnavigation(),
//         ],
//       ),
//     );
//   }
// }
//

