// import 'package:flutter/material.dart';
// import 'package:zlib/core/utils/helpers/update_text_style.dart';

// class TextWidget2 extends StatelessWidget {
//    TextWidget2(
//     this.text, {
//     this.style,
//     this.textAlign,
//     this.color,
//     super.key,
//     this.shadows,
//     this.maxLines,
//     this.fit= BoxFit.scaleDown,
//     this.decoration,
//   });
//   final String text;
//   final TextStyle? style;
//   final TextAlign? textAlign;
//   final Color? color;
//       List<Shadow>? shadows;
// final int? maxLines;
// final BoxFit fit;
// final TextDecoration? decoration;

//   @override
//   Widget build(BuildContext context) {
//     return FittedBox(
//       fit: fit,
//       child: Text(
//         text,
//         style: UpdateTextStyle(
//           previousTextStyle: style,
//           color: color,
//           shadows: shadows,
//           decoration:decoration,
          
//         ),
//         textAlign:textAlign,
      
//         maxLines: maxLines,
//       ),
      
//     );
//   }
// }
