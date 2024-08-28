import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:msmes_app/config/localization/constants_loclization.dart';

import '../../res/values_manager.dart';

import '../widgets/text/ui_title_small.dart';

class UiNoData extends StatelessWidget {
  const UiNoData({super.key, this.enableText = true});
  final bool
      enableText; // TODO: use this condition for hide text when add image

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.PADDING_18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // TODO: ADD image there's no data
            Align(
              alignment: Alignment.center,
              child: UiTitleSmall(C.there_is_no_data.tr()),
            ),
          ],
        ),
      ),
    );
  }
}
