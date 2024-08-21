import 'package:flutter/material.dart';

import 'color_manager.dart';
import 'text_style_manager.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get getThemeLight => ThemeData(
        colorScheme: ColorManager.lightScheme.toColorScheme(),
        textTheme: TextStyleManager.textTheme(),
      );
  static ThemeData get getThemeDark => ThemeData(
        colorScheme: ColorManager.darkScheme.toColorScheme(),
        textTheme: TextStyleManager.textTheme(),
      );
}
