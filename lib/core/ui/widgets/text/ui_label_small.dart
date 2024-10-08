import 'package:flutter/material.dart';

import 'ui_text.dart';

class UiLabelSmall extends StatelessWidget {
  const UiLabelSmall(
    this.text, {
    super.key,
    this.color,
    this.decoration,
    this.textAlign,
    this.maxLines,
  });
  final String text;
  final Color? color;
  final TextDecoration? decoration;
  final TextAlign? textAlign;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return UiText(
      text,
      style: Theme.of(context).textTheme.labelSmall,
      color: color,
      decoration: decoration,
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }
}
