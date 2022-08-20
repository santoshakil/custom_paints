import 'dart:math';

import 'package:flutter/material.dart';

class TimeCurvePainter extends CustomPainter {
  TimeCurvePainter({
    required this.start,
    required this.text,
    required this.end,
  });

  final TimeOfDay start;
  final TimeOfDay end;
  final String text;

  final _paint = Paint()
    ..color = Colors.blueGrey.withOpacity(0.3)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 18;
  final textPainter = TextPainter(textDirection: _ltr);

  @override
  void paint(Canvas canvas, Size size) {
    final r = min(size.width, size.height) / 2;
    final startAngle = _angle(start);
    final endAngle = _angle(end);
    final c = Offset(r, r);
    final rect = Rect.fromCircle(center: c, radius: r * 0.7);
    canvas.drawArc(rect, startAngle, endAngle - startAngle, false, _paint);

    const initialAngle = 90.0;
    canvas
      ..translate(size.width / 2, size.height / 2 - 90)
      ..rotate(initialAngle / 2)
      ..translate(180 * sin(initialAngle / 2), 0);
    double angle = initialAngle;
    for (int i = 0; i < text.length; i++) {
      angle = drawLetter(canvas, text[i], angle);
    }
  }

  double drawLetter(Canvas canvas, String letter, double prevAngle) {
    textPainter.text = TextSpan(text: letter, style: _style);
    textPainter.layout(minWidth: 0, maxWidth: double.maxFinite);
    final alpha = 2 * asin(textPainter.width / 180);
    canvas.rotate((alpha + prevAngle) / 2);
    textPainter.paint(canvas, Offset(0, -textPainter.height));
    canvas.translate(textPainter.width, 0);
    return alpha;
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

double radians(double degrees) => degrees * pi / 180;

double _angle(TimeOfDay time) => radians(time.hour * 30 + time.minute * 0.5);

const _ltr = TextDirection.ltr;
const _style = TextStyle(
  fontWeight: FontWeight.w900,
  color: Colors.black,
  fontSize: 12,
);
