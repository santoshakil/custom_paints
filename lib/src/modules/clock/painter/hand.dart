import 'dart:math';

import 'package:flutter/material.dart';

class HandPainter extends CustomPainter {
  HandPainter(
    this.s, {
    required this.color,
    required this.width,
    required this.padding,
  });

  final double padding;
  final double width;
  final Color color;
  final int s;

  final paintC = Paint()..color = Colors.teal.shade600;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeCap = StrokeCap.round
      ..strokeWidth = width
      ..color = color;

    final r = size.width / 2;
    final r1 = r - padding;
    final c = Offset(r, r);
    final a = s * pi / 30;
    final p = Offset(r + r1 * cos(a), r + r1 * sin(a));

    canvas
      ..drawLine(c, p, paint)
      ..drawCircle(c, 10, paintC);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
