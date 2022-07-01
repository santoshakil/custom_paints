import 'package:flutter/material.dart';

import '../../clock/view/clock.dart';
import '../../paints/circle/view/circle.dart';
import '../../setting/provider/config/app_config_db.dart';
import '../../setting/provider/theme/theme_db.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clock'),
        actions: [
          IconButton(
            icon: const Icon(Icons.color_lens_rounded),
            onPressed: () => changeTheme(appConfig.themeIndex == 0 ? 1 : 0),
          ),
        ],
      ),
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
