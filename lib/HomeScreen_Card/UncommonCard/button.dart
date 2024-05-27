import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Import the Google Fonts package

// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//         appBar: AppBar(
//           title: Text('Button List with Images'),
//         ),
//         body: Center(
//           child: ButtonListWithImages(),
//         ),
//       );
//   }
// }

class ButtonListWithImages extends StatelessWidget {
  final List<Map<String, dynamic>> buttonData = [
    {'imagePath': 'assets/Beard.png', 'label': 'Haircut  '},
    {'imagePath': 'assets/Group.png', 'label': 'Shaving  '},
    {'imagePath': 'assets/guidance_massage.png', 'label': 'Massage  '},
    {'imagePath': 'assets/Skincare.png', 'label': 'Skincare  '},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:

        buttonData.map((button) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                print('${button['label']} pressed');
              },
              style: ElevatedButton.styleFrom(
                // Rectangle button size
                padding: EdgeInsets.zero, // Remove default padding
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0), // Rounded corners
                ),
                backgroundColor: Color(0xffC2E3FF), // Button color
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    button['imagePath'], // Image asset path
                    width: 40, // Adjust image width as needed
                    height: 40, // Adjust image height as needed
                  ),
                  SizedBox(width: 8.0), // Adjust spacing between image and text
                  Text(
                    button['label'], // Button label
                    style: GoogleFonts.manrope( // Use GoogleFonts.manrope
                      fontSize: 16.0,
                      color: Color(0xff2D3D50), // Text color
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
