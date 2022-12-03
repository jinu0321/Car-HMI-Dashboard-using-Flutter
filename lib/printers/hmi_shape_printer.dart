import 'package:car_hmi_dashboard/constants.dart';
import 'package:flutter/material.dart';

class HmiShapePrinter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var path = Path()
      ..moveTo(0, size.height / 2)
      ..lineTo(size.width * 0.13, size.height * 0.05)
      ..lineTo(size.width * 0.31, 0)
      ..lineTo(size.width * 0.39, size.height * 0.11)
      ..lineTo(size.width * 0.60, size.height * 0.11)
      ..lineTo(size.width * 0.69, 0)
      ..lineTo(size.width * 0.87, size.height * 0.05)
      ..lineTo(size.width, size.height * 0.5)
      ..lineTo(size.width * 0.87, size.height)
      ..lineTo(size.width * 0.13, size.height)
      ..close();

    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 6
      ..color = primaryColor;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
