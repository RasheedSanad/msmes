import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:msmes_app/core/res/values_manager.dart';
import 'package:msmes_app/core/ui/widgets/text/ui_label_large.dart';

import '../../../config/localization/constants_loclization.dart';
import '../../res/resources_manager.dart';
import '../../ui/widgets/images_icons/ui_svg_image_asset.dart';

class ScaffoldWithNavigationRail extends StatelessWidget {
  const ScaffoldWithNavigationRail({
    super.key,
    required this.body,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });
  final Widget body;
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: selectedIndex,
            onDestinationSelected: onDestinationSelected,
            labelType: NavigationRailLabelType.all,
            destinations: <NavigationRailDestination>[
              NavigationRailDestination(
                label: UiLabelLarge(C.main.tr()),
                icon: UiSvgImageAsset(
                  R.svgPath.home_outline,
                ),
                selectedIcon: UiSvgImageAsset(
                  R.svgPath.home_fill,
                ),
              ),
              NavigationRailDestination(
                label: UiLabelLarge(C.idea.tr()),
                icon: UiSvgImageAsset(
                  R.svgPath.lamp_outlined,
                  width: AppSizes.ICON_SIZE_24,
                  height: AppSizes.ICON_SIZE_24,
                ),
                selectedIcon: UiSvgImageAsset(
                  R.svgPath.lamp_fill,
                  width: AppSizes.ICON_SIZE_24,
                  height: AppSizes.ICON_SIZE_24,
                ),
              ),
              NavigationRailDestination(
                label: UiLabelLarge(C.my_tasks.tr()),
                icon: UiSvgImageAsset(
                  R.svgPath.document_align_left_outline,
                ),
                selectedIcon: UiSvgImageAsset(
                  R.svgPath.document_align_left_fill,
                ),
              ),
              NavigationRailDestination(
                label: UiLabelLarge(C.messages.tr()),
                icon: UiSvgImageAsset(
                  R.svgPath.message_outline,
                ),
                selectedIcon: UiSvgImageAsset(
                  R.svgPath.message_fill,
                ),
              ),
              NavigationRailDestination(
                label: UiLabelLarge(C.more.tr()),
                icon: UiSvgImageAsset(
                  R.svgPath.menu_fries,
                ),
                selectedIcon: UiSvgImageAsset(
                  R.svgPath.menu_fries,
                ),
              ),
            ],
          ),
          const VerticalDivider(thickness: 1, width: 1),
          // This is the main content.
          Expanded(
            child: body,
          ),
        ],
      ),
    );
  }
}
