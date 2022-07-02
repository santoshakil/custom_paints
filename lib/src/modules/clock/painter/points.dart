import 'dart:math';

import 'package:flutter/material.dart';

const _bm = [15, 30, 45, 60];

class PointsPainter extends CustomPainter {
  final _paint = Paint()
    ..strokeCap = StrokeCap.round
    ..color = Colors.teal.shade800
    ..strokeWidth = 3;
  final _paintB = Paint()
    ..strokeCap = StrokeCap.round
    ..color = Colors.teal.shade700
    ..strokeWidth = 7;
  final _paintC = Paint()
    ..strokeCap = StrokeCap.round
    ..color = Colors.grey.withOpacity(0.1)
    ..strokeWidth = 1;

  @override
  void paint(Canvas canvas, Size size) {
    final r = size.width / 2;
    final c = Offset(r, r);
    final r1 = r - 15;
    final r2 = r - 22;
    final r3 = r - 25;

    // paint minute points
    for (var i = 1; i < 61; i++) {
      final a = i * 6 * pi / 180;
      final p1 = Offset(r + r1 * cos(a), r + r1 * sin(a));
      final p2 = Offset(r + r2 * cos(a), r + r2 * sin(a));
      canvas.drawLine(p1, p2, _bm.contains(i) ? _paintB : _paint);
    }

    for (var i = 2.5; i < 61; i += 2.5) {
      final a = i * 6 * pi / 180;
      final p = Offset(r + r3 * cos(a), r + r3 * sin(a));

      canvas.drawLine(p, c, _paintC);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
