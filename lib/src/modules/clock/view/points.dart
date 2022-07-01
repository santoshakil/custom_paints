import 'package:flutter/material.dart';

import '../painter/points.dart';

class MinutePointsView extends StatelessWidget {
  const MinutePointsView({Key? key, required this.clockSize}) : super(key: key);
  final double clockSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: clockSize,
      height: clockSize,
      child: CustomPaint(painter: PointsPainter()),
    );
  }
}
