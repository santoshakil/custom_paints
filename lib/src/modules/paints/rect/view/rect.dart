import 'package:flutter/material.dart';

class RectPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final bodyPainter = Paint()..color = Colors.red.withOpacity(0.1);
    final borderPainter = Paint()
      ..color = Colors.red
      ..strokeWidth = 10
      ..strokeCap = StrokeCap.round;

    canvas.drawRect(
      Rect.fromCircle(
        center: Offset(size.width * 0.5, size.height * 0.5),
        radius: size.width * 0.5,
      ),
      bodyPainter,
    );

    canvas.drawLine(
      Offset(0, 0 + size.height * 0.2),
      Offset(size.width, 0 + size.height * 0.2),
      borderPainter,
    );
    canvas.drawLine(
      Offset(0, 0 + size.height * 0.8),
      Offset(size.width, 0 + size.height * 0.8),
      borderPainter,
    );
    canvas.drawLine(
      Offset(0, 0 + size.height * 0.2),
      Offset(0, 0 + size.height * 0.8),
      borderPainter,
    );
    canvas.drawLine(
      Offset(size.width, 0 + size.height * 0.2),
      Offset(size.width, 0 + size.height * 0.8),
      borderPainter,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
