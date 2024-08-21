import 'package:flutter/material.dart';

import '../../../res/resources_manager.dart';
import '../../../res/values_manager.dart';
import '../cards/ui_card.dart';

class UiCircleIcon extends StatelessWidget {
  const UiCircleIcon({
    super.key,
    required this.child,
    this.onTap,
    this.color,
    this.margin,
    this.padding,
    this.boxShadow,
  });
  final Function()? onTap;
  final Widget? child;
  final Color? color;
  final EdgeInsetsGeometry? padding, margin;
  final List<BoxShadow>? boxShadow;

  @override
  Widget build(BuildContext context) {
    return UiCard(
      onTap: onTap,
      decoration: BoxDecoration(
        color: color ?? Theme.of(context).colorScheme.primaryContainer,
        shape: BoxShape.circle,
        boxShadow: boxShadow ?? R.shadow.s1(context),
      ),
      margin: margin,
      padding: padding ?? EdgeInsets.all(AppSizes.PADDING_6),
      child: child,
    );
  }
}
