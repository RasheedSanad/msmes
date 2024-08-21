import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../config/localization/constants_loclization.dart';
import '../../res/resources_manager.dart';
import '../../res/values_manager.dart';
import '../widgets/images_icons/ui_svg_image_asset.dart';

class ScaffoldWithNavigationBar extends StatelessWidget {
  const ScaffoldWithNavigationBar({
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
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: body,
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        
        indicatorColor: colorScheme.primary,
        backgroundColor: colorScheme.surface,
        destinations: [
          NavigationDestination(
            label: C.main.tr(),
            icon: UiSvgImageAsset(
              R.svgPath.home_outline,
              color: colorScheme.onSurface,
            ),
            selectedIcon: UiSvgImageAsset(
              R.svgPath.home_fill,
              color: colorScheme.onSurface,
            ),
          ),
          NavigationDestination(
            label: C.idea.tr(),
            icon: UiSvgImageAsset(
              R.svgPath.lamp_outlined,
              color: colorScheme.onSurface,
              width: AppSizes.ICON_SIZE_24,
              height: AppSizes.ICON_SIZE_24,
            ),
            selectedIcon: UiSvgImageAsset(
              R.svgPath.lamp_fill,
              color: colorScheme.onSurface,
              width: AppSizes.ICON_SIZE_24,
              height: AppSizes.ICON_SIZE_24,
            ),
          ),
          NavigationDestination(
            label: C.my_tasks.tr(),
            icon: UiSvgImageAsset(
              R.svgPath.document_align_left_outline,
              color: colorScheme.onSurface,
            ),
            selectedIcon: UiSvgImageAsset(
              R.svgPath.document_align_left_fill,
              color: colorScheme.onSurface,
            ),
          ),
          NavigationDestination(
            label: C.messages.tr(),
            icon: UiSvgImageAsset(
              R.svgPath.message_outline,
              color: colorScheme.onSurface,
            ),
            selectedIcon: UiSvgImageAsset(
              R.svgPath.message_fill,
              color: colorScheme.onSurface,
            ),
          ),
          NavigationDestination(
            label: C.more.tr(),
            icon: UiSvgImageAsset(
              R.svgPath.menu_fries,
              color: colorScheme.onSurface,
            ),
            selectedIcon: UiSvgImageAsset(
              R.svgPath.menu_fries,
              color: colorScheme.onSurface,
            ),
          ),
        ],
        onDestinationSelected: onDestinationSelected,
      ),
    );
  }
}
