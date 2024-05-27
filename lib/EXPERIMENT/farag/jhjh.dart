import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'otp.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(RegistrationApp());

class RegistrationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Registration Demo',
      home: RegistrationPage(),
    );
  }
}

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController(text: '+972');
  bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Text(
                'Register Your Account',
                style: GoogleFonts.manrope(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            inputField(nameController, 'Name'),
            inputField(emailController, 'Email'),
            inputField(passwordController, 'Password', isPassword: true),
            inputField(confirmPasswordController, 'Confirm Password', isPassword: true),
            inputField(phoneController, 'Phone'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: isTermsAccepted,
                  onChanged: (bool? value) {
                    setState(() {
                      isTermsAccepted = value!;
                    });
                  },
                ),
                Text('I accept the terms and conditions'),
              ],
            ),
            ElevatedButton(
              onPressed: isTermsAccepted ? () {
                // Get.to(() => MyOTP()); // Navigate when accepted
              } : null,
              child: Text('Next'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget inputField(TextEditingController controller, String label, {bool isPassword = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
      child: TextField(
        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
