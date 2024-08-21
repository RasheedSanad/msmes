import 'package:flutter/material.dart';

import '../../../res/values_manager.dart';

class TextWithPaddingWidget extends StatelessWidget {
  const TextWithPaddingWidget(
    this.text, {
    this.style,
    this.textAlign,
    super.key,
  });
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Padding(
      // width: constraints.maxWidth*0.9,
      padding: EdgeInsets.symmetric(horizontal: AppSizes.PADDING_18),
      child: FittedBox(
        child: Text(
          text,
          style: style,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
