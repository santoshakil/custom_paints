import 'package:flutter/material.dart';

import '../../paints/rect/view/rect.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CustomPainter')),
      body: const KPaint(),
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
        painter: RectPainter(),
      ),
    );
  }
}
