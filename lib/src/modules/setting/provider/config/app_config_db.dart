import 'package:flutter/foundation.dart' show kReleaseMode;
import 'package:isar/isar.dart' show Isar;

import '../../../../utils/paths/paths.dart' show appDBDir;
import '../../model/setting_model.dart'
    show AppConfig, AppConfigSchema, GetAppConfigCollection;

late final Isar db;

AppConfig get appConfig => db.appConfigs.getSync(0) ?? AppConfig();

Future<void> openAppConfigDB() async => db = await Isar.open(
      [AppConfigSchema],
      directory: appDBDir.path,
      inspector: !kReleaseMode,
    );
