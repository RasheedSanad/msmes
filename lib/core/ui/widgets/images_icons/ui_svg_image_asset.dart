import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UiSvgImageAsset extends StatelessWidget {
  const UiSvgImageAsset(
    this.imageUrl, {
    super.key,
    this.fit,
    this.color,
    this.height,
    this.width,
  });
  final String imageUrl;
  final BoxFit? fit;
  final Color? color;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      imageUrl,
      color: color ?? Theme.of(context).colorScheme.onSurface,
      fit: fit ?? BoxFit.contain,
      width: width,
      height: height,
    );
  }
}
