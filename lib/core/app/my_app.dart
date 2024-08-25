import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:msmes_app/features/home/presentation/bloc/home_bloc.dart';

import '../../config/localization/c_language_manager.dart';
import '../../config/router/app_router_provider.dart';
import '../../config/theme/app_theme.dart';
import '../../features/home/presentation/bloc_consultants/home_consultants_bloc.dart';
import 'injection_container.dart' as di;

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
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => di.locator<HomeBloc>(),
            ),
            BlocProvider(
              create: (_) => di.locator<HomeConsultantsBloc>(),
            ),
          ],
          child: MaterialApp.router(
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
            // // device preview test UI
            // useInheritedMediaQuery: true,
            // locale: DevicePreview.locale(context),
            // builder: DevicePreview.appBuilder,
            //
          ),
        );
      },
    );
  }
}
