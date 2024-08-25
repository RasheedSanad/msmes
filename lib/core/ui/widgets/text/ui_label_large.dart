import 'package:flutter/material.dart';

import 'ui_text.dart';

class UiLabelLarge extends StatelessWidget {
  const UiLabelLarge(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.decoration,
    this.fontFamily,
    this.maxLines,
  });
  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final TextDecoration? decoration;
  final String? fontFamily;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return UiText(
      text,
      style: Theme.of(context).textTheme.labelLarge,
      color: color,
      textAlign: textAlign,
      decoration: decoration,
      fontFamily: fontFamily,
      maxLines: maxLines,
    );
  }
}
