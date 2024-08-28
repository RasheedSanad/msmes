import 'package:flutter/material.dart';

import '../../error/app_failure.dart';
import 'ui_error.dart';
import 'ui_no_data.dart';
import 'ui_offline.dart';

class UiFailure extends StatelessWidget {
  const UiFailure({
    super.key,
    this.appFailure,
    this.enableText = true,
    this.onTap,
  });

  /// to parse [appFailure] use this code:
  ///  tryParseObject<AppFailure>(error)
  ///  UiFailure(appFailure: tryParseObject<AppFailure>(error)),
  final AppFailure? appFailure;
  final bool enableText;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    if (appFailure == NoInternetConnectionFailure()) {
      return UiOffline(
        fit: BoxFit.contain,
        enableText: enableText,
        onTap: onTap,
      );
    }
    // else if (appFailure == ServerFailure()) {
    //   return UiServerFailure(
    //     fit: BoxFit.contain,
    //     enableText: enableText,
    //     onTap: onTap,
    //   );
    // }
    else if (appFailure == NoDataFailure()) {
      return UiNoData(
        enableText: enableText,
      );
    }

    return UiError(
      message: appFailure?.message ?? null,
      onTap: onTap,
    );
  }
}
