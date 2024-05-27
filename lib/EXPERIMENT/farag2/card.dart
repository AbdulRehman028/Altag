import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryCard extends StatefulWidget {
  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  List<String> _selectedLabels = [];  // List to track multiple selected labels

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> buttonData = [
      {'imagePath': 'assets/makeup.svg', 'label': 'Makeup'},
      {'imagePath': 'assets/Eyebrows.svg', 'label': 'Eyebrows'},
      {'imagePath': 'assets/sissor.svg', 'label': 'Haircut'},
      {'imagePath': 'assets/Skincare.svg', 'label': 'Skincare'},
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: buttonData.map((button) {
          bool isSelected = _selectedLabels.contains(button['label']);
          return Padding(
            padding: const EdgeInsets.all(8.0),
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
                backgroundColor: isSelected ? Color(0xFFE9FFF7) : Color(0XFFFFFFFF), // Icon and text color
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  side: BorderSide(
                    color: isSelected ? Color(0xFF2DB281) : Colors.transparent, // Border color
                    width: 2, // Border width
                  ),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(width: 12.0), // Add padding to the left (optional)
                  SvgPicture.asset(
                    button['imagePath'],
                    width: 24,
                    height: 24,
                    color: isSelected ? Color(0xFF2DB281) : null, // Optional: Change SVG color when selected
                  ),
                  SizedBox(width: 12.0),
                  Text(
                    button['label'],
                    style: GoogleFonts.manrope(
                      fontSize: 16.0,
                      color: isSelected ? Color(0xFF2DB281) : Color(0xff2D3D50), // Text color change
                    ),
                  ),
                  SizedBox(width: 8.0), // Add padding to the right (optional)
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
