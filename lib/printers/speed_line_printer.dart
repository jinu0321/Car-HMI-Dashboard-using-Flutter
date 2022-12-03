import 'package:car_hmi_dashboard/constants.dart';
import 'package:flutter/material.dart';

class SpeedLinePrinter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double strokeWidth = 8;
    Paint paintTop = Paint()
      ..style = PaintingStyle.fill
      ..color = primaryColor;

    Path pathTop = Path()
      ..moveTo(size.width * 0.78, 0)
      ..lineTo(size.width, size.height * 0.3)
      ..lineTo(size.width - strokeWidth, size.height * 0.3)
      ..close;

    Path pathBottom = Path()
      ..moveTo(size.width, size.height * 0.3)
      ..lineTo(40, size.height - 20)
      ..lineTo(size.width - strokeWidth, size.height * 0.3)
      ..close();

    canvas.drawPath(pathTop, paintTop);
    canvas.drawPath(pathBottom, paintTop);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}