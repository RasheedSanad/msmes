// import 'package:flutter/material.dart';
// import 'package:zlib/core/utils/res/values_manager.dart';
// import 'package:zlib/core/utils/ui/widgets/text/text_widget2.dart';

// import '../../../res/resources_manager.dart';

// class TextContainerWidget extends StatelessWidget {
//   const TextContainerWidget({super.key, required this.text});
//   final String text;

//   @override
//   Widget build(BuildContext context) {
//     var theme = Theme.of(context);

//     return Container(
//       width: MediaQuery.of(context).size.width * 0.8,
//       decoration: BoxDecoration(
//         color: theme.colorScheme.primaryContainer,
//         boxShadow: R.shadow.s1(context),
//         border: Border.all(
//           color: theme.colorScheme.outline,
//           width: 0.1,
//         ),
//         borderRadius: BorderRadius.circular(AppSizes.RADIUS_10),
//       ),
//       padding: EdgeInsets.symmetric(vertical: AppSizes.PADDING_6,horizontal: AppSizes.PADDING_4),
//       child: TextWidget2(
//         text,
//         textAlign: TextAlign.center,
//         style:theme.textTheme.labelLarge,
//           color: theme.colorScheme.onPrimaryContainer,
        
//       ),
//     );
//   }
// }
