import 'package:flutter/material.dart';

import '../../../res/values_manager.dart';
import '../images_icons/ui_svg_image_asset.dart';
import 'ui_text.dart';

class UiTextSvgIcon extends StatelessWidget {
  UiTextSvgIcon({
    required this.text,
    required this.svgImageUrl,
    this.style,
    this.textAlign,
    this.color,
    super.key,
    this.shadows,
    this.maxLines,
    this.fit = BoxFit.scaleDown,
    this.decoration,
    this.iconColor,
  });
  final String text;
  final String svgImageUrl;
  final TextStyle? style;
  final TextAlign? textAlign;
  final Color? color;
  final Color? iconColor;
  List<Shadow>? shadows;
  final int? maxLines;
  final BoxFit fit;
  final TextDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: AppSizes.WIDTH_30,
          child: UiSvgImageAsset(
            svgImageUrl,
            fit: fit,
            color: iconColor,
            height: AppSizes.ICON_SIZE_24,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.67,
          child: UiText(
            text,
            style: style,
            color: color,
            shadows: shadows,
            decoration: decoration,
            textAlign: textAlign,
            maxLines: maxLines,
          ),
        ),
      ],
    );
  }
}
