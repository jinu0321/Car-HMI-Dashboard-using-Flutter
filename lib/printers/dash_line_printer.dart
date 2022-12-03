import 'dart:ui';

import 'package:car_hmi_dashboard/constants.dart';
import 'package:flutter/material.dart';

class DashLinePrinter extends CustomPainter {
  DashLinePrinter(this.progress);

  final double progress;

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8
      ..color = primaryColor;

    var path = Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width * progress, size.height / 2);

    Path dashPath = Path();
    double dashWidth = 20;
    double dashSpace = 2;
    double distance = 0;

    for (PathMetric pathMetric in path.computeMetrics()) {
      while (distance < pathMetric.length) {
        dashPath.addPath(pathMetric.extractPath(distance, distance + dashWidth),
            Offset.zero);
        distance += dashWidth;
        distance += dashSpace;
        canvas.drawPath(dashPath, paint);
      }
    }
  }

  @override
  bool shouldRepaint(DashLinePrinter oldDelegate) {
    return oldDelegate.progress != progress;
  }
}

class BatteryCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width * 0.05, 0)
      ..lineTo(size.width * 0.95, 0)
      ..lineTo(size.width, size.height);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
