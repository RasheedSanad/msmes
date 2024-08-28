// Color converter: https://www.w3schools.com/colors/colors_converter.asp
// Transparency list
// 100% FF
// 95%  F2
// 90%  E6
// 87%  DE
// 85%  D9
// 80%  CC
// 75%  BF
// 70%  B3
// 65%  A6
// 60%  99
// 55%  8C
// 54%  8A
// 50%  80
// 45%  73
// 40%  66
// 35%  59
// 32%  52
// 30%  4D
// 26%  42
// 25%  40
// 20%  33
// 16%  29
// 15%  26
// 12%  1F
// 10%  1A
// 5%   0D
// 0%   00

import 'package:flutter/material.dart';

class ColorManager {
  const ColorManager._();

  //  common
  static MaterialScheme get lightScheme => _lightScheme();
  static MaterialScheme get darkScheme => _darkScheme();

  // Light Color scheme
  static MaterialScheme _lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff3DB2E4),
      surfaceTint: Color(4283194514),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4292665855),
      onPrimaryContainer: Color(0xff03174b),
      secondary: Color(0xff595e72),
      onSecondary: Color.fromARGB(255, 31, 29, 29),
      secondaryContainer: Color(4292796921),
      onSecondaryContainer: Color(4279638828),
      tertiary: Color(0xff745470),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4294957046),
      onTertiaryContainer: Color(4281078314),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      background: Color(4294637823),
      onBackground: Color(4279900961),
      surface: Color(4294637823),
      onSurface: Color(4279900961),
      surfaceVariant: Color(4293059052),
      onSurfaceVariant: Color(4282730063),
      outline: Color(0x40767680),
      outlineVariant: Color(4291217104),
      shadow: Color(0x33000000),
      scrim: Color(4278190080),
      inverseSurface: Color(4281282614),
      inverseOnSurface: Color(4294045943),
      inversePrimary: Color(4290102527),
      primaryFixed: Color(4292665855),
      onPrimaryFixed: Color(4278392651),
      primaryFixedDim: Color(4290102527),
      onPrimaryFixedVariant: Color(4281615481),
      secondaryFixed: Color(4292796921),
      onSecondaryFixed: Color(4279638828),
      secondaryFixedDim: Color(4290954717),
      onSecondaryFixedVariant: Color(4282467929),
      tertiaryFixed: Color(4294957046),
      onTertiaryFixed: Color(4281078314),
      tertiaryFixedDim: Color(4293114586),
      onTertiaryFixedVariant: Color(4284169559),
      surfaceDim: Color(4292532704),
      surfaceBright: Color(4294637823),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294243322),
      surfaceContainer: Color(4293848564),
      surfaceContainerHigh: Color(4293519343),
      surfaceContainerHighest: Color(4293124585),
    );
  }

  // dark color scheme
  static MaterialScheme _darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4290102527),
      surfaceTint: Color(4290102527),
      onPrimary: Color(4280036705),
      primaryContainer: Color(4281615481),
      onPrimaryContainer: Color(4292665855),
      secondary: Color(4290954717),
      onSecondary: Color(4281020482),
      secondaryContainer: Color(4282467929),
      onSecondaryContainer: Color(4292796921),
      tertiary: Color(4293114586),
      onTertiary: Color(4282591040),
      tertiaryContainer: Color(4284169559),
      onTertiaryContainer: Color(4294957046),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      background: Color(4279374616),
      onBackground: Color(4293124585),
      surface: Color(4279374616),
      onSurface: Color(4293124585),
      surfaceVariant: Color(4282730063),
      onSurfaceVariant: Color(4291217104),
      outline: Color(0x40767680),
      outlineVariant: Color(4282730063),
      shadow: Color(0x33838383),
      scrim: Color(4278190080),
      inverseSurface: Color(4293124585),
      inverseOnSurface: Color(4281282614),
      inversePrimary: Color(4283194514),
      primaryFixed: Color(4292665855),
      onPrimaryFixed: Color(4278392651),
      primaryFixedDim: Color(4290102527),
      onPrimaryFixedVariant: Color(4281615481),
      secondaryFixed: Color(4292796921),
      onSecondaryFixed: Color(4279638828),
      secondaryFixedDim: Color(4290954717),
      onSecondaryFixedVariant: Color(4282467929),
      tertiaryFixed: Color(4294957046),
      onTertiaryFixed: Color(4281078314),
      tertiaryFixedDim: Color(4293114586),
      onTertiaryFixedVariant: Color(4284169559),
      surfaceDim: Color(4279374616),
      surfaceBright: Color(4281874751),
      surfaceContainerLowest: Color(4279045651),
      surfaceContainerLow: Color(4279900961),
      surfaceContainer: Color(4280164133),
      surfaceContainerHigh: Color(4280887855),
      surfaceContainerHighest: Color(4281611322),
    );
  }
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}
