library resources_manager;

import 'package:flutter/material.dart';

import 'values_manager.dart';

part 'resources_manager/images_path.dart';
part 'resources_manager/shadow.dart';
part 'resources_manager/svg_path.dart';

/// R stands for Resources
/// to get resources from assets file
class R {
  // add a private constructor to prevent this class being instantiated
  // e.g. invoke `LocalStorageKey()` accidentally
  R._(); // Private constructor to prevent instantiation

  // ****************************

  // TODO: Add anims : Animation
  static _ImagesPath imagesPath = _ImagesPath();
  static _SvgPath svgPath = _SvgPath();
  static _Shadow shadow = _Shadow(); //  TODO: Move shadows to styles manager
}
