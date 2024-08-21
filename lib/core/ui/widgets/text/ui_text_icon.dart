import 'package:flutter/material.dart';

import '../sized_box/gap_w4.dart';
import 'ui_text.dart';

class UiTextIcon extends StatelessWidget {
  UiTextIcon({
    required this.text,
    required this.icon,
    this.style,
    this.textAlign,
    this.color,
    super.key,
    this.shadows,
    this.maxLines,
    this.decoration,
    this.onTap,
  });
  final String text;
  final Widget icon;
  final TextStyle? style;
  final TextAlign? textAlign;
  final Color? color;
  List<Shadow>? shadows;
  final int? maxLines;
  final TextDecoration? decoration;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          icon,
          const GapW4(),
          UiText(
            text,
            style: style,
            shadows: shadows,
            color: color,
            decoration: decoration,
            textAlign: textAlign,
            maxLines: maxLines,
          ),
        ],
      ),
    );
  }
}
