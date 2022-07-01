import 'package:flutter/material.dart';

import '../../../../utils/themes/themes.dart';

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final bodyPainter = Paint()..color = theme.scaffoldBackgroundColor;
    final borderPainter = Paint()
      ..color = Colors.red
      ..strokeWidth = 10
      ..strokeCap = StrokeCap.round;

    canvas.drawOval(
      Rect.fromCircle(
        center: Offset(size.width * 0.5, size.height * 0.5),
        radius: size.width * 0.5,
      ),
      borderPainter,
    );

    canvas.drawCircle(
      Offset(size.width * 0.5, size.height * 0.5),
      size.width * 0.47,
      bodyPainter,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
