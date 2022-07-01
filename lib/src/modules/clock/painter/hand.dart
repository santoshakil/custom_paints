import 'dart:math';

import 'package:flutter/material.dart';

class HandPainter extends CustomPainter {
  HandPainter(this.s, {required this.width, required this.padding});

  final double padding;
  final double width;
  final int s;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeCap = StrokeCap.round
      ..color = Colors.teal.shade800
      ..strokeWidth = width;

    final a = (s - 15) * 6 * pi / 180;
    final r = size.width / 2;
    final c = Offset(r, r);
    final r1 = r - padding;

    final p = Offset(r + r1 * cos(a), r + r1 * sin(a));
    canvas.drawLine(c, p, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
