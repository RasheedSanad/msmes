import 'package:flutter/material.dart';

import '../../../res/values_manager.dart';

class UiCard extends StatelessWidget {
  const UiCard({
    super.key,
    this.color,
    this.margin,
    this.padding,
    this.child,
    this.height,
    this.width,
    this.decoration,
    this.onTap,
    this.border,
    this.boxShadow,
    this.borderRadius,
  });
  final Widget? child;
  final Color? color;
  final double? width, height;
  final EdgeInsetsGeometry? padding, margin;
  final Decoration? decoration;
  final BoxBorder? border;
  final List<BoxShadow>? boxShadow;
  final BorderRadiusGeometry? borderRadius;

  /// Called when the user taps this part of the material.
  final GestureTapCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: padding ?? EdgeInsets.all(AppSizes.PADDING_10),
        margin: margin,
        decoration: decoration ??
            BoxDecoration(
              color: color ?? Theme.of(context).colorScheme.surface,
              borderRadius:
                  borderRadius ?? BorderRadius.circular(AppSizes.RADIUS_10),
              border: border,
              boxShadow: boxShadow,
            ),
        width: width,
        height: height,
        child: child,
      ),
    );
  }
}
