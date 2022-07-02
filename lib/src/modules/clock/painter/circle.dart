import 'dart:math';

import 'package:flutter/material.dart';

class CirclePainter extends CustomPainter {
  final _paint = Paint()
    ..color = Colors.blueGrey
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 18
    ..style = PaintingStyle.stroke;
  final _paintB = Paint()
    ..color = Colors.blueGrey.withOpacity(0.3)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 18;

  @override
  void paint(Canvas canvas, Size size) {
    final r = min(size.width, size.height) / 2;
    final c = Offset(r, r);

    canvas.drawArc(
      Rect.fromCircle(center: c, radius: r),
      -pi / 2,
      2 * pi,
      false,
      _paint,
    );

    canvas.drawArc(
      Rect.fromCircle(center: c, radius: r * 0.7),
      -pi / 2,
      pi / 2,
      false,
      _paintB,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
