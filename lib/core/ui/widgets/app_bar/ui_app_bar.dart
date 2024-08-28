import 'package:flutter/material.dart';
import 'package:msmes_app/core/ui/widgets/images_icons/ui_image_asset.dart';

import '../../../res/resources_manager.dart';
import '../../../res/values_manager.dart';
import '../images_icons/ui_svg_image_asset.dart';
import '../sized_box/gap_w10.dart';
import '../text/ui_headline_small.dart';

class UiAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isBack;
  final String title;
  final Widget? actionChild;

  /// you can add more fields that meet your needs

  const UiAppBar({
    super.key,
    this.isBack = false,
    required this.title,
    this.actionChild,
  });

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return AppBar(
      backgroundColor: colorScheme.surface,
      shadowColor: colorScheme.primary,
      elevation: 0.5,
      title: Align(
        alignment: AlignmentDirectional.center,
        child: UiHeadlineSmall(
          title,
          textAlign: TextAlign.center,
        ),
      ),
      actions: [
        actionChild ?? const SizedBox(),
        const GapW10(),
      ],
      leading: Padding(
        padding: EdgeInsets.symmetric(vertical: preferredSize.height * 0.06),
        child: UiImageAsset(
          R.imagesPath.nmfy_logo,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + AppSizes.HEIGHT_4);
}
