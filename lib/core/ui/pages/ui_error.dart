import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:msmes_app/config/localization/constants_loclization.dart';
import 'package:msmes_app/core/ui/widgets/text/ui_text_icon.dart';

import '../widgets/text/ui_label_large.dart';

class UiError extends StatelessWidget {
  const UiError({super.key, this.message, this.onTap});
  final String? message;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: onTap == null
          ? _text()
          : Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _text(),
                UiTextIcon(
                  text: C.reload.tr(),
                  icon: const Icon(Icons.replay_outlined),
                  textAlign: TextAlign.center,
                  onTap: onTap,
                )
              ],
            ),
    );
  }

  Widget _text() => UiLabelLarge(message ?? C.unknown_error.tr());
}
