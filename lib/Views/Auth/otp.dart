import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

import '../../Auth/registration.dart';

class MyOTP extends StatefulWidget {
  const MyOTP({Key? key}) : super(key: key);

  @override
  State<MyOTP> createState() => _MyOTPState();
}

class _MyOTPState extends State<MyOTP> {
  final _pinPutController = TextEditingController();
  final _pinPutFocusNode = FocusNode();
  Color buttonColor = const Color(0XFFD1D3D9);
  Color textColor = const Color(0XFF141414);// Initial color of the button

  @override
  void initState() {
    super.initState();
    _pinPutController.addListener(_onPinChanged);
  }

  @override
  void dispose() {
    _pinPutController.removeListener(_onPinChanged);
    _pinPutController.dispose();
    super.dispose();
  }

  void _onPinChanged() {
    setState(() {
      if (_pinPutController.text.length == 6) {
        // Change button color when pin is filled
        buttonColor = Color(0XFF2DB281);
        textColor = Colors.white;// Change to desired color
      } else {
        // Reset button color if pin is not filled
        buttonColor = Color(0XFFD1D3D9);
        textColor = Color(0XFF141414);// Reset to initial color
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 34,
      height: 36,
      textStyle: GoogleFonts.manrope(
        fontSize: 18,
        color: const Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 90),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/logo.png',
                      height: 132,
                      width: 120,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Enter your phone number',
                      style: GoogleFonts.manrope(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Code was sent to phone number:',
                      style: GoogleFonts.manrope(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color(0XFF2D3D50),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '+9721234567890',
                      style: GoogleFonts.manrope(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color(0XFF2D3D50),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: SizedBox(
                        child: Pinput(
                          controller: _pinPutController,
                          length: 6,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          defaultPinTheme: PinTheme(
                            height: 54,
                            width: 56,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.black.withOpacity(0.5),
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          preFilledWidget: Text(
                            'X',
                            style: GoogleFonts.manrope(
                              color: Color(0XFFA7A7A7),
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: SizedBox(
                        height: 52,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(() => const Registration());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: buttonColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Confirm',
                            style: GoogleFonts.manrope(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: textColor,

                            ),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Resend Code',
                        style: GoogleFonts.manrope(
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFF2D3D50),
                        ),
                      ),
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
