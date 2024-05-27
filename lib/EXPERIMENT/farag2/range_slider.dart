import 'package:flutter/material.dart';

class MyRangeSlider extends StatefulWidget {
  @override
  State<MyRangeSlider> createState() => _MyRangeSliderState();
}

class _MyRangeSliderState extends State<MyRangeSlider> {
  RangeValues values = const RangeValues(0.00, 100.00);
  RangeLabels labels = const RangeLabels('0.00', '100.00');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SliderTheme(
        data: SliderTheme.of(context).copyWith(
          inactiveTrackColor: Colors.grey,
          rangeValueIndicatorShape: PaddleRangeSliderValueIndicatorShape(),
          showValueIndicator: ShowValueIndicator.always,
          valueIndicatorTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
          // Always show the indicator

        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100.0,
            child: RangeSlider(
              max: 100.00,
              min: 0.00,
              activeColor: Colors.blue,
              divisions: 100,
              values: values,
              labels: labels,
              onChanged: (value) {
                print('Start: ${value.start}');
                print('End: ${value.end}');
                setState(() {
                  values = value;
                  labels = RangeLabels('${value.start.round().toString()}', '${value.end.round().toString()}');
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
