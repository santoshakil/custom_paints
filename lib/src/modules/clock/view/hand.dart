import 'package:flutter/material.dart';

import '../painter/hand.dart';

class HandView extends StatelessWidget {
  const HandView({
    Key? key,
    required this.color,
    required this.width,
    required this.stream,
    required this.padding,
    required this.clockSize,
    required this.intialValue,
  }) : super(key: key);

  final Stream<int> stream;
  final double clockSize;
  final int intialValue;
  final double padding;
  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      stream: stream,
      builder: (_, s) {
        return SizedBox(
          width: clockSize,
          height: clockSize,
          child: CustomPaint(
            willChange: true,
            painter: HandPainter(
              s.data ?? intialValue,
              padding: padding,
              width: width,
              color: color,
            ),
          ),
        );
      },
    );
  }
}
