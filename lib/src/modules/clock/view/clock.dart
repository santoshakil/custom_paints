import 'package:flutter/material.dart';

import '../../../utils/extensions/extension.dart';
import '../painter/circle.dart';
import '../painter/text.dart';
import 'hand.dart';
import 'points.dart';

class Clock extends StatelessWidget {
  const Clock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final clockSize = size.width * 0.9;
    return Center(
      child: Card(
        elevation: 10.0,
        shape: const StadiumBorder(),
        child: Stack(
          alignment: Alignment.center,
          children: [
            MinutePointsView(clockSize: clockSize),
            _Circle(clockSize: size.width * 0.9),
            _Hour(clockSize: clockSize),
            _Minute(clockSize: clockSize),
            _Second(clockSize: clockSize),
            _Text(clockSize: size.width * 0.95),
          ],
        ),
      ),
    );
  }
}

class _Text extends StatelessWidget {
  const _Text({Key? key, required this.clockSize}) : super(key: key);
  final double clockSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: clockSize,
      height: clockSize,
      child: CustomPaint(painter: CustomTextPainter()),
    );
  }
}

class _Circle extends StatelessWidget {
  const _Circle({Key? key, required this.clockSize}) : super(key: key);
  final double clockSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: clockSize,
      height: clockSize,
      child: CustomPaint(painter: CirclePainter()),
    );
  }
}

class _Hour extends StatelessWidget {
  const _Hour({Key? key, required this.clockSize}) : super(key: key);
  final double clockSize;

  @override
  Widget build(BuildContext context) {
    return HandView(
      width: 8,
      clockSize: clockSize,
      padding: clockSize * 0.15,
      color: Colors.blueGrey,
      intialValue: DateTime.now().hourAtMinutePoint,
      stream: Stream.periodic(
        const Duration(seconds: 1),
        (_) => DateTime.now().hourAtMinutePoint,
      ),
    );
  }
}

class _Minute extends StatelessWidget {
  const _Minute({Key? key, required this.clockSize}) : super(key: key);
  final double clockSize;

  @override
  Widget build(BuildContext context) {
    return HandView(
      width: 5,
      clockSize: clockSize,
      padding: clockSize * 0.1,
      color: Colors.blue.shade800,
      intialValue: DateTime.now().minute,
      stream: Stream.periodic(
        const Duration(seconds: 1),
        (_) => DateTime.now().minute,
      ),
    );
  }
}

class _Second extends StatelessWidget {
  const _Second({Key? key, required this.clockSize}) : super(key: key);
  final double clockSize;

  @override
  Widget build(BuildContext context) {
    return HandView(
      width: 3,
      padding: 15,
      clockSize: clockSize,
      color: Colors.teal.shade600,
      intialValue: DateTime.now().second,
      stream: Stream.periodic(
        const Duration(seconds: 1),
        (_) => DateTime.now().second,
      ),
    );
  }
}
