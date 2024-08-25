// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../../core/res/values_manager.dart';
import '../../../../../core/ui/widgets/images_icons/ui_svg_image_asset.dart';

class CenterIconWidget extends StatelessWidget {
  final String svgPath;
  final double? end;
  final double? top;
  final double width;
  final double height;
  const CenterIconWidget({
    super.key,
    required this.svgPath,
    this.end,
    this.top,
    required this.width,
    required this.height,
  });
  @override
  Widget build(BuildContext context) {
    return PositionedDirectional(
      end: end,
      top: top,
      child: InkWell(
        child: Container(
          width: width,
          height: height,
          padding: EdgeInsets.symmetric(horizontal: AppSizes.PADDING_4),
          child: FittedBox(
            child: UiSvgImageAsset(
              svgPath,
            ),
          ),
        ),
      ),
    );
  }
}
