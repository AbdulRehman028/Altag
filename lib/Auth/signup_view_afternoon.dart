import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled2/Auth/phone.dart';


class SignupPageAfternoon extends StatelessWidget {
  const SignupPageAfternoon({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset("assets/back2.png", fit: BoxFit.cover),
          Positioned(
            top: 0,  // Adjust the positioning as needed
            right: 0,
            child: logoWidget(),
          ),
          Positioned(
            top: 0,  // Position at the top of the screen
            left: 0,  // Position at the left of the screen
            child: Padding(
              padding: const EdgeInsets.all(16.0),  // Add some padding around the button
              child: ElevatedButton(
                onPressed: () {
                  // Handle live chat tap
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Color(0xFF5CC8DD), // Text color of the button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0), // Rounded corners
                  ),
                ),
                child:  Row(
                  mainAxisSize: MainAxisSize.min,  // Minimize the row size to wrap its content
                  children: <Widget>[
                    Text('Live Chat',style: TextStyle(
                      fontFamily: GoogleFonts.manrope().fontFamily,
                      color: Color(0xFF2D3D50),
                      fontSize: 14,

                    ),),  // Text label
                    SizedBox(width: 8.0),  // Spacing between text and icon
                    const Icon(
                      FontAwesomeIcons.comment, // FontAwesome chat icon
                      size: 14.0, // Icon size
                      color: Color(0xFF2D3D50), // Icon color
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 160.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(height: 50),
                    // Space to start the form below the images
                    Text(
                      "Good afternoon!",
                      style: TextStyle(
                        fontFamily: GoogleFonts.manrope().fontFamily,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 32),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.transparent,
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Colors.grey,fontFamily: GoogleFonts.manrope().fontFamily,),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    PasswordField(),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: () {
                        Get.to(() => MyPhone());
                      },
                      child: Text("Sign in"),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.green,
                        padding:
                        EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        minimumSize: Size(
                            343, 50), // Use minimumSize to specify the size
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(
                          fontFamily: GoogleFonts.manrope().fontFamily,
                          decoration: TextDecoration.underline,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          FontAwesomeIcons.idCardClip, // FontAwesome chat icon
                          size: 31.0, // Icon size
                          color: Color(0xFFC5E4FC), // Icon color
                        ),
                        // Use the credit card icon
                        SizedBox(width: 8),
                        TextButton(
                          onPressed: () {},
                          child:  Text(
                            'Continue as a guest',
                            style: TextStyle(
                              fontFamily: GoogleFonts.manrope().fontFamily,
                              decoration: TextDecoration.underline,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 48),
                     Text(
                      "Find us on social media",
                      style: TextStyle(
                        fontFamily: GoogleFonts.manrope().fontFamily,
                        fontSize: 13.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // IconButton(
                        //   icon: SvgPicture.asset('assets/instagram.svg',
                        //     width: 40,  // Specify the width for the SVG
                        //     height: 40,),
                        //   onPressed: () {},
                        // ),
                        IconButton(
                          icon: Image.asset(
                            'assets/instagram_icon.png',
                            // Specify the path to your PNG image
                            width: 40, // Specify the width for the PNG
                            height: 40, // Specify the height for the PNG
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Image.asset(
                            'assets/facebook_icon.png',
                            // Specify the path to your PNG image
                            width: 40, // Specify the width for the PNG
                            height: 40, // Specify the height for the PNG
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Image.asset(
                            'assets/tiktok_icon.png',
                            // Specify the path to your PNG image
                            width: 40, // Specify the width for the PNG
                            height: 40, // Specify the height for the PNG
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget logoWidget() {
  // Replace with your Logo widget
  return Container(
    // Wrap your logo in a container if you need to apply padding, margin, etc.
    padding: const EdgeInsets.all(16.0),  // For example, to give some padding
    child: Image.asset(
      'assets/logo.png',  // Replace with your logo asset path
      width: 60,  // Set the width of the logo
      height: 62,  // Set the height of the logo
      fit: BoxFit.contain,  // Contain the logo within the bounds without stretching
    ),
  );
}

class PasswordField extends StatefulWidget {
  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isObscured = true; // Tracks the visibility of the password

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        obscureText: _isObscured, // Controls visibility of the password
        style: TextStyle(color: Colors.white), // Text color
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.transparent,
          // Transparent background
          hintText: 'Password',
          hintStyle: TextStyle(color: Colors.grey,fontFamily: GoogleFonts.manrope().fontFamily,),
          // Grey color for the hint text
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.white), // White border
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide:
            BorderSide(color: Colors.white), // White border when not focused
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide:
            BorderSide(color: Colors.white), // White border when focused
          ),
          suffixIcon: IconButton(
            icon: Icon(
              _isObscured ? Icons.visibility_off : Icons.visibility,
              // Toggles the icon
              color: const Color(0xFFA7A7A7), // Icon color
            ),
            onPressed: () {
              setState(() {
                _isObscured = !_isObscured; // Toggle the state of the obscureText
              });
            },
          ),
        ),
      ),
    );
  }
}

