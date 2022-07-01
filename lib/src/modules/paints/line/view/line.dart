import 'package:flutter/material.dart';

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.red
      ..strokeWidth = 10
      ..strokeCap = StrokeCap.round;

    final h1 = Offset(0, size.height * 0.5);
    final h2 = Offset(size.width, size.height * 0.5);
    canvas.drawLine(h1, h2, paint);

    final v1 = Offset(size.width * 0.5, 0);
    final v2 = Offset(size.width * 0.5, size.height);
    canvas.drawLine(v1, v2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
