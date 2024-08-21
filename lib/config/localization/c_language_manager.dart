import 'package:flutter/material.dart';

enum ELanguageType { ENGLISH, ARABIC }

class CLanguageManager {
  CLanguageManager._();
  static const ALL_LOCAL = [
    ARABIC_LOCAL,
    ENGLISH_LOCAL,
  ];
  
  static const String ARABIC = "ar";
  static const String ENGLISH = "en";
  static const String ASSET_PATH_LOCALISATIONS = "assets/translations";

  static const Locale ARABIC_LOCAL = Locale("ar", "SA");
  static const Locale ENGLISH_LOCAL = Locale("en", "US");

  static bool isArabic(context) =>
      ARABIC_LOCAL == Localizations.localeOf(context);
}

extension LanguageTypeExtension on ELanguageType {
  String getValue() {
    switch (this) {
      case ELanguageType.ENGLISH:
        return CLanguageManager.ENGLISH;
      case ELanguageType.ARABIC:
        return CLanguageManager.ARABIC;
    }
  }
}
