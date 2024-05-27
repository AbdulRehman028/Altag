import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButtons extends StatefulWidget {
  @override
  _CustomButtonsState createState() => _CustomButtonsState();
}

class _CustomButtonsState extends State<CustomButtons> {
  List<String> _selectedLabels = [];  // List to track multiple selected labels

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> buttonData = [
      {'imagePath': 'assets/clock.svg', 'label': 'Last minute   '},
      {'imagePath': 'assets/special.svg', 'label': 'Special offer   '},
    ];

    return Center(  // Wrap with Center widget to align the buttons to the center of the available space
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,  // Align buttons horizontally to the center
            children: buttonData.map((button) {
              bool isSelected = _selectedLabels.contains(button['label']);
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Container(
                  height: 50 ,// Set height to 48
                  width: 180,  // Set width to 160
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (isSelected) {
                          _selectedLabels.remove(button['label']);
                        } else {
                          _selectedLabels.add(button['label']);
                        }
                      });
                      print('${button['label']} pressed');
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: isSelected ? Colors.blue : Colors.black,
                      backgroundColor: isSelected ? Color(0xFFE9FFF7) : Color(0XFFFFFFFF),
                      padding: EdgeInsets.all(8),  // Increase padding to make buttons bigger
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        side: BorderSide(
                          color: isSelected ? Color(0xFF2DB281) : Colors.transparent,
                          width: 1,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(width: 12.0),
                        SvgPicture.asset(
                          button['imagePath'],
                          width: 15,
                          height: 15,
                        ),
                        SizedBox(width: 12.0),  // Increase spacing between image and text
                        Text(
                          button['label'],
                          style: GoogleFonts.manrope(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,  // Optional: make text bold
                            color: Color(0xFF2DB281),
                          ),
                        ),
                        SizedBox(width: 12.0),
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
