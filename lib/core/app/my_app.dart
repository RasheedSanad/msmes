import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/localization/c_language_manager.dart';
import '../../config/router/app_router_provider.dart';
import '../../config/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  static MyApp? _instance;
  const MyApp._interanl();
  factory MyApp() => _instance ?? const MyApp._interanl();

  @override
  Widget build(BuildContext context) {
    /// debugInvertOversizedImages : If there is an image that affects the program's performance, it flips the image
    // debugInvertOversizedImages = true;
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            // router
            routerConfig: goRouter,
            // localizations
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            // theme
            theme: AppTheme.getThemeLight,
            darkTheme: AppTheme.getThemeDark,
            //
          );
        });
  }
}
