import 'dart:math';

import 'package:flutter/material.dart';

class CustomTextPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final r = size.width / 2;
    final r1 = r - 10;

    for (var i = 2.5; i < 61; i += 2.5) {
      final a = i * pi / 30;
      final p = Offset(r + r1 * cos(a), r + r1 * sin(a));
      final text = i ~/ 2.5;

      final span = TextSpan(text: '$text', style: _style);
      final textPainter = TextPainter(text: span, textDirection: _ltr)
        ..layout();

      final offset = Offset(textPainter.width / 2, textPainter.height / 2);
      // canvas.rotate(a);
      textPainter.paint(canvas, p - offset);
      // canvas.translate(offset.dx, offset.dy);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

const _ltr = TextDirection.ltr;
const _style =
    TextStyle(fontWeight: FontWeight.w900, color: Colors.black, fontSize: 12);
