export '../error/app_failure_and_exception_extensiton.dart';
//! Old
import 'package:flutter/material.dart';

// import 'dart:ui'as ui;

extension NonNullString on String? {
  String orEmpty() {
    if (this == null) {
      return "";
    }
    return this!.trim();
  }
}

extension NonNullInteger on int? {
  int orZero() {
    if (this == null) {
      return 0;
    }
    return this!;
  }
}

extension NonNullDouble on double? {
  double orZero() {
    if (this == null) {
      return 0.0;
    }
    return this!;
  }
}

extension CheckIsNullDateTime on DateTime? {
  bool isNull() {
    if (this == null) {
      return true;
    }
    return false;
  }

  bool isNotNull() {
    if (this == null) {
      return false;
    }
    return true;
  }
}

// ! old

//
extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString, [String? opacity]) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7)
      buffer.write(opacity ?? 'ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}

//*
extension SetNullToMapIfStringIsEmpty on String {
  String? toMap() {
    if (isEmpty) return null;
    return this;
  }
}

extension KeyIsNotExistInMap on Map<String, dynamic> {
  String? fromString(String key) {
    if (containsKey(key)) {
      if (this[key] is String) {
        return this[key];
      } else if (this[key] == null) {
        return null;
      }
      return this[key] as String;
    }
    return null;
  }

  bool? fromBool(String key) {
    if (containsKey(key)) {
      if (this[key].runtimeType == bool) {
        return this[key];
      }
      return null;
    }
    return null;
  }

  int? fromInt(String key) {
    if (containsKey(key)) {
      if (this[key].runtimeType == int) {
        return this[key];
      }
      return int.tryParse(this[key].toString());
    }
    return null;
  }

  double? fromDouble(String key) {
    if (containsKey(key)) {
      if (this[key].runtimeType == double) {
        return this[key];
      }
      return double.tryParse(this[key].toString());
    }
    return null;
  }

  DateTime? fromDateTime(String key) {
    if (containsKey(key)) {
      if (this[key].runtimeType == DateTime) {
        return this[key];
      }
      return DateTime.tryParse(this[key].toString());
    }
    return null;
  }

  DateTime? fromDatetimeFromMillisecondsSinceEpoch(String key) {
    if (containsKey(key)) {
      if (this[key] is int) {
        return DateTime.fromMillisecondsSinceEpoch(this[key]);
      }
      return null;
    }
    return null;
  }
}
