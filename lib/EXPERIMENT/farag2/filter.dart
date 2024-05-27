import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled2/EXPERIMENT/farag2/special.dart';
import 'card.dart';

void main() {
  runApp(const MaterialApp(home: Filter()));
}

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  RangeValues values = const RangeValues(0.00, 100.00);
  RangeLabels labels = const RangeLabels('0.00', '100.00');
  RangeValues value = const RangeValues(480, 1020); // Default to 08:00 to 17:00



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Filter',
            style: GoogleFonts.manrope(
              fontWeight: FontWeight.w700,
              color: const Color(0xff2C3D50),
              fontSize: 16,
            ),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(
            color: Colors.grey,
            height: 1,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Category',
              textAlign: TextAlign.left,
              style: GoogleFonts.manrope(
                fontWeight: FontWeight.w700,
                color: const Color(0xff2C3D50),
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            CategoryCard(),
            const SizedBox(height: 24),
            Text(
              'Time Range',
              textAlign: TextAlign.left,
              style: GoogleFonts.manrope(
                fontWeight: FontWeight.w700,
                color: const Color(0xff2C3D50),
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 50),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                inactiveTrackColor: Colors.grey,
                activeTrackColor: Colors.blue,
                thumbColor: Colors.blue,
                overlayColor: Colors.blue.withOpacity(0.2),
                rangeValueIndicatorShape: const PaddleRangeSliderValueIndicatorShape(),
                showValueIndicator: ShowValueIndicator.always,
                valueIndicatorTextStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: RangeSlider(
                  min: 0,
                  max: 1440,
                  divisions: 96,
                  activeColor: const Color(0xff2DB281),// Divisions for every 15 minutes
                  values: value,
                  labels: RangeLabels(formatTime(value.start), formatTime(value.end)),
                  onChanged: (RangeValues newValues) {
                    setState(() {
                      value = newValues;
                      // Update labels to reflect the time format
                      value = RangeValues(
                        newValues.start.roundToDouble(),
                        newValues.end.roundToDouble(),
                      );
                    });
                  },
                ),
              ),
            ),

            const SizedBox(height: 24),
            Text(
              'Price range',
              textAlign: TextAlign.left,
              style: GoogleFonts.manrope(
                fontWeight: FontWeight.w700,
                color: const Color(0xff2C3D50),
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 24),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                inactiveTrackColor: Colors.grey,
                rangeValueIndicatorShape: const PaddleRangeSliderValueIndicatorShape(),
                showValueIndicator: ShowValueIndicator.always,
                valueIndicatorTextStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
                // Always show the indicator
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: RangeSlider(
                  max: 1000.00,
                  min: 0.00,
                  activeColor: const Color(0xff2DB281),
                  divisions: 100,
                  values: values,
                  labels: labels,
                  onChanged: (value) {
                    print('Start: ${value.start}');
                    print('End: ${value.end}');
                    setState(() {
                      values = value;
                      labels = RangeLabels('\$${value.start.round()}', '\$${value.end.round()}');
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text('Special', textAlign: TextAlign.left,
              style: GoogleFonts.manrope(
                fontWeight: FontWeight.w700,
                color: const Color(0xff2C3D50),
                fontSize: 16,
              ),),
            const SizedBox(height: 10),
            CustomButtons(),
            const SizedBox(height: 400),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    border: Border.all(
                      color: const Color(0xffEB3F46),
                      // width: 2.0,
                    ),
                  ),
                  child: Container(
                    width: 163,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child:  Text(
                        'Clear all',
                        style: TextStyle(
                          fontFamily: GoogleFonts.manrope().fontFamily,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFEB3F46),

                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xff2DB281), // Container background color, keep or remove as needed
                  ),
                  child: SizedBox(
                    width: 163,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green, // Set the button fill color to green
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Text(
                        'Apply',
                        style: TextStyle(
                          fontFamily: GoogleFonts.manrope().fontFamily,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffffffff), // This is the text color (white)
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  String formatTime(double time) {
    int hours = (time ~/ 60);
    int minutes = (time % 60).toInt();
    return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}';
  }
}