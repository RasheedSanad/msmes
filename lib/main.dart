import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:msmes_app/config/localization/c_language_manager.dart';

import 'core/app/injection_container.dart';
import 'core/app/my_app.dart';

void main() async {
  await _init();
  runApp(
    DevicePreview(
      // enabled: !kReleaseMode,
      enabled: false,
      builder: (context) => EasyLocalization(
        supportedLocales: CLanguageManager.ALL_LOCAL,
        path: CLanguageManager.ASSET_PATH_LOCALISATIONS,
        startLocale: CLanguageManager.ARABIC_LOCAL,
        child: Phoenix(child: MyApp()),
      ),
    ),
  );
}

Future<void> _init() async {
  WidgetsFlutterBinding.ensureInitialized();
  // to use portraiUp only
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  // injection
  await setupLocator();
}
