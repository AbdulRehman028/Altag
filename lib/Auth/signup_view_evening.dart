import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled2/Auth/phone.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Signup Form Example',
      home: SignupPageEvening(),
    );
  }
}

class SignupPageEvening extends StatelessWidget {
  const SignupPageEvening({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // Add this line
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset("assets/back3.png", fit: BoxFit.cover), // Background image
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  topBarButtons(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.2), // Increased height here
                  mainContent(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget topBarButtons() => Padding(
    padding: const EdgeInsets.all(16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        ElevatedButton(
          onPressed: () {
            // Handle live chat tap
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: Color(0xFF1A58BC),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Live Chat', style: TextStyle(
                fontFamily: GoogleFonts.manrope().fontFamily,
                color: Colors.white,
                fontSize: 14,
              )),
              SizedBox(width: 8.0),
              Icon(
                FontAwesomeIcons.comment,
                size: 14.0,
                color: Colors.white,
              ),
            ],
          ),
        ),
        logoWidget(),
      ],
    ),
  );

  Widget mainContent(BuildContext context) => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        "Good Evening",
        style: TextStyle(
          fontFamily: GoogleFonts.manrope().fontFamily,
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      SizedBox(height: 32),
      emailTextField(),
      SizedBox(height: 16),
      PasswordField(),
      SizedBox(height: 24),
      signInButton(context),
      SizedBox(height: 8),
      forgotPasswordButton(),
      SizedBox(height: 16),
      continueAsGuest(),
      SizedBox(height: 48),
      findUsOnSocialMedia(),
      socialMediaIcons(),
    ],
  );

  Widget emailTextField() => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: TextField(
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.transparent,
        hintText: 'Email',
        hintStyle: TextStyle(color: Colors.grey, fontFamily: GoogleFonts.manrope().fontFamily),
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
  );

  Widget signInButton(BuildContext context) => ElevatedButton(
    onPressed: () {
      Get.to(() => MyPhone());
    },
    child: Text("Sign in"),
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Colors.green,
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      minimumSize: Size(343, 50),
    ),
  );

  Widget forgotPasswordButton() => TextButton(
    onPressed: () {},
    child: Text(
      'Forgot password?',
      style: TextStyle(
        fontFamily: GoogleFonts.manrope().fontFamily,
        decoration: TextDecoration.underline,
        decorationColor: Colors.white,
        fontSize: 16,
        color: Colors.white,
      ),
    ),
  );

  Widget continueAsGuest() => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        FontAwesomeIcons.idCardClip,
        size: 31.0,
        color: Color(0xFFC5E4FC),
      ),
      SizedBox(width: 8),
      TextButton(
        onPressed: () {},
        child: Text(
          'Continue as a guest',
          style: TextStyle(
            fontFamily: GoogleFonts.manrope().fontFamily,
            decoration: TextDecoration.underline,
            decorationColor: Colors.white,
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    ],
  );

  Widget findUsOnSocialMedia() => Text(
    "Find us on social media",
    style: TextStyle(
      fontFamily: GoogleFonts.manrope().fontFamily,
      fontSize: 13.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  );

  Widget socialMediaIcons() => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
        icon: Image.asset('assets/instagram_icon.png', width: 40, height: 40),
        onPressed: () {},
      ),
      IconButton(
        icon: Image.asset('assets/facebook_icon.png', width: 40, height: 40),
        onPressed: () {},
      ),
      IconButton(
        icon: Image.asset('assets/tiktok_icon.png', width: 40, height: 40),
        onPressed: () {},
      ),
    ],
  );

  Widget logoWidget() => Container(
    padding: const EdgeInsets.all(16.0),
    child: Image.asset(
      'assets/logo2.png',
      width: 60,
      height: 62,
      fit: BoxFit.contain,
    ),
  );
}

class PasswordField extends StatefulWidget {
  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        obscureText: _isObscured,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.transparent,
          hintText: 'Password',
          hintStyle: TextStyle(color: Colors.grey, fontFamily: GoogleFonts.manrope().fontFamily),
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
          suffixIcon: IconButton(
            icon: Icon(
              _isObscured ? Icons.visibility_off : Icons.visibility,
              color: const Color(0xFFA7A7A7),
            ),
            onPressed: () {
              setState(() {
                _isObscured = !_isObscured;
              });
            },
          ),
        ),
      ),
    );
  }
}
