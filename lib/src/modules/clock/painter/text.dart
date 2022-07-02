import 'dart:math';

import 'package:flutter/material.dart';

class CustomTextPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final r = size.width / 2;
    final r1 = r - 10;

    for (var i = 2.5; i < 61; i += 2.5) {
      final a = i * 6 * pi / 180;
      final p = Offset(r + r1 * cos(a), r + r1 * sin(a));
      final h = i ~/ 2.5;

      final textPainter = TextPainter(
        text: TextSpan(
          text: (h > 18 ? h - 18 : h + 6).toString(),
          style: const TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.black,
            fontSize: 12,
          ),
        ),
        textDirection: TextDirection.ltr,
      );
      textPainter.layout();
      textPainter.paint(
        canvas,
        p - Offset(textPainter.width / 2, textPainter.height / 2),
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
