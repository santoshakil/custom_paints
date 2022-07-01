import 'package:flutter/material.dart';

import '../../../utils/extensions/extension.dart';
import 'hand.dart';
import 'points.dart';

class Clock extends StatelessWidget {
  const Clock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final clockSize = size.width * 0.95;
    return Center(
      child: Card(
        elevation: 10.0,
        shape: const StadiumBorder(),
        child: Stack(
          alignment: Alignment.center,
          children: [
            MinutePointsView(clockSize: clockSize),
            HandView(
              width: 3,
              padding: 10,
              clockSize: clockSize,
              intialValue: DateTime.now().second,
              stream: Stream.periodic(
                const Duration(seconds: 1),
                (_) => DateTime.now().second,
              ),
            ),
            HandView(
              width: 5,
              clockSize: clockSize,
              padding: clockSize * 0.1,
              intialValue: DateTime.now().minute,
              stream: Stream.periodic(
                const Duration(minutes: 1),
                (_) => DateTime.now().minute,
              ),
            ),
            HandView(
              width: 8,
              clockSize: clockSize,
              padding: clockSize * 0.15,
              intialValue: DateTime.now().hourIn12,
              stream: Stream.periodic(
                const Duration(hours: 1),
                (_) => DateTime.now().hourIn12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
