import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;  // Default selected index
  final List<String> categories = ['Recent', 'Popular', 'For You', 'Featured'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(categories.length, (index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;  // Update the selected index on tap
              });
            },
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    Text(
                      categories[index],
                      style: GoogleFonts.manrope(
                        fontSize: 16,
                        color: selectedIndex == index ? Color(0xff2C3D50) : Color(0xffB0B0B0),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 2, // Set height to 2
                  width: 90, // Set width to double.infinity
                  color: selectedIndex == index ? Color(0xff2C3D50) : Colors.transparent,
                ),
              ],
            ),

          );
        }
        ),


      ),
    );

  }
}

