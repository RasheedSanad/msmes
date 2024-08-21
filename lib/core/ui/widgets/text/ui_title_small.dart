import 'package:flutter/material.dart';

import 'ui_text.dart';

class UiTitleSmall extends StatelessWidget {
  const UiTitleSmall(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.maxLines,
    this.shadows,
    this.fontFamily,
  });
  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;
  final List<Shadow>? shadows;
  final String? fontFamily;

  @override
  Widget build(BuildContext context) {
    return UiText(
      text,
      style: Theme.of(context).textTheme.titleSmall,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
      shadows: shadows,
      fontFamily: fontFamily,
    );
  }
}
