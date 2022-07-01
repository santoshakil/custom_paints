import 'package:flutter/material.dart';

import '../../clock/view/clock.dart';
import '../../paints/circle/view/circle.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CustomPainter')),
      body: const Clock(),
    );
  }
}

class KPaint extends StatelessWidget {
  const KPaint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      padding: const EdgeInsets.all(20),
      child: CustomPaint(
        painter: CirclePainter(),
      ),
    );
  }
}
