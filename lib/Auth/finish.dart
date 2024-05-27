import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../mypp.dart';

void main() {
  runApp(MaterialApp(home: (Finish())));
}

class Finish extends StatefulWidget {
  @override
  State<Finish> createState() => _FinishState();
}

class _FinishState extends State<Finish> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 90),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/logo.png',
                      height: 132,
                      width: 120,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Finish Registration',
                      style: GoogleFonts.manrope(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2D3D50),
                      ),
                    ),
                    SizedBox(height: 24),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.transparent,
                          hintText: 'Your Name',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontFamily: GoogleFonts.manrope().fontFamily,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: Color(0xFF2D3D50)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: Color(0xFF2D3D50)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.transparent,
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontFamily: GoogleFonts.manrope().fontFamily,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: Color(0xFF2D3D50)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: Color(0xFF2D3D50)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.transparent,
                          hintText: 'Date of Birth',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontFamily: GoogleFonts.manrope().fontFamily,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: Color(0xFF2D3D50)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: Color(0xFF2D3D50)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    PasswordField(),
                    SizedBox(height: 16),
                    ConfirmField(),
                    SizedBox(height: 16),
                    RadioButtonRow(),
                    SizedBox(height: 16,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: _isChecked,
                            onChanged: (value) {
                              setState(() {
                                _isChecked = value!;
                              });
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                            // Color of the checkbox
                            fillColor: MaterialStateProperty.resolveWith((states) {
                              if (states.contains(MaterialState.selected)) {
                                return Color(0xff2DB281);
                              }
                              return Colors.grey;
                              // Color when the checkbox is unchecked
                            },
                            ),
                            // activeColor: Color(0xff2DB281), // Color when the checkbox is checked
                            checkColor: Colors.white,
                            side: BorderSide(
                              color: Color(0xffD9D9D9),
                            ),// Color of the check icon

                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap, // Reduces tap target padding
                            visualDensity: VisualDensity.comfortable, // Adjusts the visual density of the checkbox
                          ),
                          Text(
                            'I agree to ',
                            style: GoogleFonts.manrope(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Terms and Conditions',
                            style: GoogleFonts.manrope(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                          Text(
                            ' and ',
                            style: GoogleFonts.manrope(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Privacy Policy.',
                            style: GoogleFonts.manrope(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: SizedBox(
                  height: 52,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                       Get.to(() => myHomeApp());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0XFF2DB281),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text(
                      'Next',
                      style: GoogleFonts.manrope(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


/// Password filed
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
          hintStyle: TextStyle(
              color: Colors.grey, fontFamily: GoogleFonts.manrope().fontFamily),
          // Grey color for the hint text
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.white), // White border
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
                color: Color(0xFF2D3D50)), // White border when not focused
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
                _isObscured =
                !_isObscured; // Toggle the state of the obscureText
              });
            },
          ),
        ),
      ),
    );
  }
}

/// Confirm password field
class ConfirmField extends StatefulWidget {
  const ConfirmField({super.key});

  @override
  State<ConfirmField> createState() => _ConfirmFieldState();
}

class _ConfirmFieldState extends State<ConfirmField> {
  bool _isObscured = true;
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
          hintText: 'Confirm Password',
          hintStyle: TextStyle(
              color: Colors.grey, fontFamily: GoogleFonts.manrope().fontFamily),
          // Grey color for the hint text
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.white), // White border
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
                color: Color(0xFF2D3D50)), // White border when not focused
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
                _isObscured =
                !_isObscured; // Toggle the state of the obscureText
              });
            },
          ),
        ),
      ),
    );
  }
}

/// Checkbox


class RadioButtonRow extends StatefulWidget {
  @override
  _RadioButtonRowState createState() => _RadioButtonRowState();
}

class _RadioButtonRowState extends State<RadioButtonRow> {
  String? _gender = 'man'; // Default value for gender, now nullable

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Radio<String>(
            value: 'man',
            groupValue: _gender,
            onChanged: (String? value) {  // Ensure the type matches the expected
              setState(() {
                _gender = value; // Update state with new gender value
              });
            },
          ),
          Text('Man'),
          Radio<String>(
            value: 'woman',
            groupValue: _gender,
            onChanged: (String? value) {  // Ensure the type matches the expected
              setState(() {
                _gender = value; // Update state with new gender value
              });
            },
          ),
          Text('Woman'),
        ],
      ),
    );
  }
}



