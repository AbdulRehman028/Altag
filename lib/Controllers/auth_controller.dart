// import 'dart:async';
// import 'dart:developer';
// import 'package:get/get.dart';
// import '../Views/Landing/onBoarding.dart';
//
// class AuthController extends GetxController {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//
//   UserModel? user;
//   SubscriptionType? get userSubscriptionType {
//     String? durationType = user?.subscription?.durationType;
//     return _convertStringToSubscriptionType(durationType);
//   }
//
//   bool isLoading = false;
//   List<BeginDetails> beginDetails = [];
//   List<CarDetails> carDetails = [];
//   Subscription? subscription;
//
//
//   final GoogleSignIn _googleSignIn = GoogleSignIn();
//   final FirebaseAuth auth = FirebaseAuth.instance;
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//
//
//
//
//   @override
//   void onReady() async{
//     if (_auth.currentUser != null) {
//       Logging.message('User is already logged in');
//       getAndRouteOnUser();
//     } else {
//       Logging.message('User is not found');
//       Future.delayed(
//         const Duration(seconds: 2),
//             () => Get.offAll(() => AppStorage().isFirstOpen ? const OnBoardingView() : const SignupView()),
//       );
//     }
//     super.onReady();
//   }
//
//   @override
//   void onClose() {}
//
//   Future<void> getAndUpdateBeginDetails() async {
//     try {
//       beginDetails = await FirestoreServices().getUserBeginDetails();
//       carDetails = await FirestoreServices().getUserCarDetails();
//       // Get subscription details
//       subscription = await FirestoreServices().getUserSubscriptionDetails(_auth.currentUser!.uid);
//
//     } catch (e) {
//       log('Error in getAndUpdateUserLocations: $e');
//     } finally {
//       update();
//     }
//   }
//
//   Future<void> deleteUserAccount() async {
//     User? currentUser = _auth.currentUser;
//     if (currentUser != null) {
//       String uid = currentUser.uid;
//       try {
//         // Delete user data from Firestore
//         await _firestore.collection('users').doc(uid).delete();
//         print("User data deleted successfully from Firestore.");
//
//         // Delete the user account
//         await currentUser.delete();
//         await AppStorage().setIsNewUser(false);
//         await signOut();
//         print("User account deleted successfully.");
//       } on FirebaseAuthException catch (e) {
//         print("Error deleting user account: ${e.message}");
//       } catch (e) {
//         print("Error deleting user data from Firestore: $e");
//       }
//     } else {
//       print("No user is currently signed in.");
//     }
//   }
//
//   // Future<void> deleteUserAccount() async {
//   //   try {
//   //     await FirebaseAuth.instance.currentUser!.delete();
//   //
//   //   } on FirebaseAuthException catch (e) {
//   //     log(e.toString());
//   //
//   //     if (e.code == "requires-recent-login") {
//   //       await _reauthenticateAndDelete();
//   //     } else {
//   //       // Handle other Firebase exceptions
//   //     }
//   //   } catch (e) {
//   //     log(e.toString());
//   //     // Handle general exception
//   //   }
//   // }
//
//   Future<void> _reauthenticateAndDelete() async {
//     try {
//       final providerData = auth.currentUser?.providerData.first;
//
//       if (AppleAuthProvider().providerId == providerData!.providerId) {
//         await auth.currentUser!
//             .reauthenticateWithProvider(AppleAuthProvider());
//       } else if (GoogleAuthProvider().providerId == providerData.providerId) {
//         await auth.currentUser!
//             .reauthenticateWithProvider(GoogleAuthProvider());
//       }
//
//       await auth.currentUser?.delete();
//     } catch (e) {
//       // Handle exceptions
//     }
//   }
//
//
//   Future<void> getAndRouteOnUser() async {
//     try {
//       isLoading = true;
//       update();
//       user = await FirestoreServices().getUser(uid: _auth.currentUser!.uid);
//       await FirestoreServices().updateFCMtoken(_auth.currentUser!.uid);
//       await getAndUpdateBeginDetails();
//
//       if (user != null) {
//         if (beginDetails.isEmpty) {
//           Logging.message('User is found but has no begin details');
//           Get.offAll(() => OnboardingNameView(initialPage: 0)); // Go to the first form
//         } else if (carDetails.isEmpty) {
//           Logging.message('User is found but has no car details');
//           Get.offAll(() => OnboardingNameView(initialPage: 2)); // Go to the third form
//         } else if (subscription == null){
//           Logging.message('User is found but has no subscription');
//           Get.offAll(() => SubscriptionView()); // Route to Subscription Screen
//         }else {
//           Logging.message('User is found and has begin and car details');
//           Get.offAll(() => LocationDetermineView());
//
//         }
//       } else {
//         Logging.message('User is not found');
//         await signOut();
//       }
//     } catch (e) {
//       Logging.error('Error in getAndRouteOnUser: $e');
//       if (e == 404) {
//         Get.offAll(() => SignupView());
//       } else {
//         Get.snackbar('Error', e.toString());
//       }
//     } finally {
//       isLoading = false;
//       update();
//     }
//   }
//
//   // Signup with Google using Firebase
//   Future<void> signUpWithGoogle() async {
//     try {
//       final GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
//       if (googleSignInAccount != null) {
//         final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;
//
//         final AuthCredential credential = GoogleAuthProvider.credential(
//             accessToken: googleSignInAuthentication.accessToken,
//             idToken: googleSignInAuthentication.idToken);
//
//         final UserCredential authResult = await auth.signInWithCredential(credential);
//         final User? firebaseUser = authResult.user;
//
//         if (firebaseUser != null) {
//           final UserModel user = UserModel(
//             uid: firebaseUser.uid,
//             email: firebaseUser.email!,
//             createdAt: DateTime.now(),
//             updatedAt: DateTime.now(),
//           );
//           await FirestoreServices().addUser(userModel: user);
//           // Set the flag to true after successful sign-up
//           await AppStorage().setIsNewUser(true);
//           await getAndRouteOnUser(); // Make sure this function is defined and does what it's supposed to
//         }
//       }
//     } on FirebaseAuthException catch (e) {
//       showCustomOkAlertDialog(Get.overlayContext!, e.message!);
//     } catch (e) {
//       showCustomOkAlertDialog(Get.overlayContext!, e.toString());
//       print(e);
//     }
//   }
//
//
//   Future<void> createUser({required String email, required String password}) async {
//     try {
//       final User = await _auth.createUserWithEmailAndPassword(email: email, password: password);
//       if (User.user != null) {
//         user = UserModel(
//           uid: User.user!.uid,
//           email: email,
//           createdAt: DateTime.now(),
//           updatedAt: DateTime.now(),
//         );
//         await FirestoreServices().addUser(userModel: user!);
//         await getAndRouteOnUser();
//         // Set the flag to true after successful sign-up
//         await AppStorage().setIsNewUser(true);
//         getAndRouteOnUser();
//       } else {}
//     } on FirebaseException catch (e) {
//       showCustomOkAlertDialog(Get.overlayContext!,  e.message!);
//     } catch (e) {
//       showCustomOkAlertDialog(Get.overlayContext!,  e.toString());
//     }
//   }
//
//   Future<void> login({required String email, required String password}) async {
//     try {
//       final rid = await _auth.signInWithEmailAndPassword(email: email, password: password);
//       if (rid.user != null) {
//
//         await getAndRouteOnUser();
//       } else {}
//     } on FirebaseException catch (e) {
//       showCustomOkAlertDialog(Get.overlayContext!,  e.message!);
//     } catch (e) {
//       showCustomOkAlertDialog(Get.overlayContext!,  e.toString());
//     }
//   }
//
//
//
//
//   Future<void> resetPassword({required String email}) async {
//     try {
//       await kOverlayWithAsyncFront(asyncFunction: () async {
//         await _auth.sendPasswordResetEmail(email: email);
//       });
//       await showCustomOkAlertDialog(
//           Get.overlayContext!, 'Password reset link sent to $email', 'Success');
//       Get.back();
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'user-not-found') {
//         showCustomOkAlertDialog(Get.overlayContext!,  'No user found for this email','Error', );
//       }
//     }
//   }
//
//   Future<void> signOut() async {
//     await _auth.signOut();
//     user = null;
//     update();
//     Get.offAll(() => const SignupView());
//   }
// }
//
//
//
//
