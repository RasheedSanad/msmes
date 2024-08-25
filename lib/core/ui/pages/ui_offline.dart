import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:msmes_app/config/localization/constants_loclization.dart';

import '../widgets/text/ui_label_large.dart';
import '../widgets/text/ui_text_icon.dart';

class UiOffline extends StatelessWidget {
  const UiOffline({
    super.key,
    this.fit,
    this.color,
    this.enableText = false,
    this.onTap,
  });
  final BoxFit? fit;
  final Color? color;
  final bool enableText;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return enableText == false
        ? (onTap == null
            ? _buildIcon(context)
            : Column(
                children: [
                  _buildIcon(context),
                  _onTapWidget(),
                ],
              ))
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildIcon(context),
              UiLabelLarge(C.no_internet_connection.tr()),
              _onTapWidget(),
            ],
          );
  }

  Widget _onTapWidget() => Visibility(
        visible: onTap != null,
        child: UiTextIcon(
          text: C.reload.tr(),
          icon: const Icon(Icons.replay_outlined),
          textAlign: TextAlign.center,
          onTap: onTap,
        ),
      );

  Widget _buildIcon(BuildContext context) => FittedBox(
        fit: fit ?? BoxFit.fill,
        child: const Icon(Icons.wifi_off),
      );
}
