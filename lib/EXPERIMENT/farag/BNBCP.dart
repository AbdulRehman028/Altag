import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path()
      ..moveTo(0, 20) // Start point at left, 20 units down
      ..quadraticBezierTo(size.width * 0.25, 0, size.width * 0.30, 0) // First curve up to the middle-left
      ..quadraticBezierTo(size.width * 0.38, 0, size.width * 0.40, 20); // Curve down to middle point

    // Arc in the middle
    path.arcToPoint(
      Offset(size.width * 0.60, 20),
      radius: Radius.circular(52.0),
      clockwise: false,
    );

    // Mirror the left side curves for the right side
    path.quadraticBezierTo(size.width * 0.62, 0, size.width * 0.70, 0); // First curve up to the middle-right
    path.quadraticBezierTo(size.width * 0.75, 0, size.width, 20); // Curve down from middle-right

    // Complete the path to the right corner
    path.lineTo(size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
