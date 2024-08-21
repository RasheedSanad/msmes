import 'package:flutter/material.dart';


class TextWidget extends StatelessWidget {
  const TextWidget(this.text,{
   
    this.style,
    this.textAlign,
        super.key,

  });
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {

    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(

        text,
        
        style: style,
        textAlign: TextAlign.center,
      ),
    );
  }
}
