import 'dart:convert' show json;

import 'package:flutter/material.dart' show ThemeData;
import 'package:isar/isar.dart';

import '../../../utils/themes/themes.dart';

part 'setting_model.g.dart';

@Collection()
class AppConfig {
  AppConfig({this.firstRun = true, this.themeIndex = 0});

  Id? id;

  final int themeIndex;

  final bool firstRun;

  Map<String, dynamic> toMap() => {
        'themeIndex': themeIndex,
        'firstRun': firstRun,
        'id': id,
      };

  factory AppConfig.fromMap(Map<String, dynamic> map) => AppConfig(
        themeIndex: map['themeIndex']?.toInt() ?? 0,
        firstRun: map['firstRun'] ?? false,
      )..id = map['id'];

  String toJson() => json.encode(toMap());

  factory AppConfig.fromJson(String source) =>
      AppConfig.fromMap(json.decode(source));

  @override
  String toString() =>
      'AppConfig(id: $id, firstRun: $firstRun, theme: ${SelectedTheme.values[themeIndex].name})';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is AppConfig && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;

  AppConfig copyWith({int? themeIndex, bool? firstRun}) => AppConfig(
        themeIndex: themeIndex ?? this.themeIndex,
        firstRun: firstRun ?? this.firstRun,
      );
}

extension AppConfigExtension on AppConfig {
  ThemeData get theme => SelectedTheme.values[themeIndex].theme;
}
