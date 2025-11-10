import 'package:flutter/material.dart';

class LeftDashedBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const double dashHeight = 8; // length of dash
    const double dashSpace = 6;  // space between dashes

    final paint = Paint()
      ..color = Color(0XFFFDF9F7)
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    double startY = 3;

    // Draw dashed line on the LEFT side
    while (startY < size.height) {
      canvas.drawLine(
        Offset(0, startY), // starting point (left edge)
        Offset(0, startY + dashHeight), // end point of dash
        paint,
      );
      startY += dashHeight + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}