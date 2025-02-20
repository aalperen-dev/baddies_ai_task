import 'package:flutter/material.dart';

import '../assets.dart';

extension AssetsExt on BuildContext {
  AssetsData get assets => AssetsData.brightness(Theme.of(this).brightness);
}
