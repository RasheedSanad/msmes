import 'package:flutter/material.dart';

import 'resources_manager.dart';
import 'values_manager.dart';

class DecorationManager {
  static BoxDecoration d1(BuildContext context,
          {Color? color, Color? shadowColor}) =>
      BoxDecoration(
        color: color,
        boxShadow: R.shadow.s1(context, color: shadowColor),
        borderRadius: BorderRadius.circular(AppSizes.RADIUS_10),
      );
  static BoxDecoration d2(BuildContext context,
          {Color? color, Color? shadowColor}) =>
      BoxDecoration(
        color: color ?? Theme.of(context).colorScheme.surface,
        boxShadow: R.shadow.s2(context, color: shadowColor),
        borderRadius: BorderRadius.circular(AppSizes.RADIUS_10),
      );
  static BoxDecoration d3(BuildContext context,
          {Color? color, Color? shadowColor}) =>
      BoxDecoration(
        color: color ?? Theme.of(context).colorScheme.surface,
        boxShadow: R.shadow.s3(context, color: shadowColor),
        borderRadius: BorderRadius.circular(AppSizes.RADIUS_10),
      );
  //* inner Shadow
  static BoxDecoration innerShadow2(BuildContext context,
          {required Color? color}) =>
      BoxDecoration(
        boxShadow: R.shadow.s2(context),
        borderRadius: BorderRadius.circular(AppSizes.RADIUS_10),
        // color: color,
      );
  static BoxDecoration innerShadow5(BuildContext context,
          {required Color? color}) =>
      BoxDecoration(
        boxShadow: R.shadow.inner5(context),
        borderRadius: BorderRadius.circular(AppSizes.RADIUS_40),
        color: color,
      );
  //* Border
  static BoxDecoration border1(
          {required Color outlineColor, required Color? color}) =>
      BoxDecoration(
        color: color,
        border: Border.all(
          color: outlineColor,
          width: 0.9,
        ),
        borderRadius: BorderRadius.circular(AppSizes.RADIUS_10),
      );
  static BoxDecoration underLineBorder(
          {required Color outlineColor, required Color? color}) =>
      BoxDecoration(
        color: color,
        border: Border(
          bottom: BorderSide(
            color: outlineColor,
            width: 0.5,
          ),
        ),
      );
  //* backgroundImage
  static BoxDecoration backgroundImage({required String imagePath}) =>
      BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.topCenter,
          image: AssetImage(imagePath),
        ),
      );
}
