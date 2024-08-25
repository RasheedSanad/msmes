import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
//
import '../../../res/values_manager.dart';
import '../text/ui_headline_small.dart';
import '../sized_box/gap_w10.dart';

class UiAppBarWithBack extends StatelessWidget implements PreferredSizeWidget {
  final bool isBack;
  final String title;
  final Widget? actionChild;

  /// you can add more fields that meet your needs

  const UiAppBarWithBack({
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
        alignment: AlignmentDirectional.centerStart,
        child: UiHeadlineSmall(
          title,
          textAlign: TextAlign.right,
        ),
      ),
      actions: [
        actionChild ?? const SizedBox(),
        const GapW10(),
      ],
      leading: InkWell(
        onTap: () => context.pop(),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: preferredSize.height * 0.2),
          child: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + AppSizes.HEIGHT_4);
}
