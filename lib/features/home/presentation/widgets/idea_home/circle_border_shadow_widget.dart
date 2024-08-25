// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:msmes_app/config/router/app_router_constant.dart';
import 'package:msmes_app/core/ui/widgets/text/ui_label_small.dart';

import '../../../../../core/res/values_manager.dart';

class CircleBorderShadowWidget extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final String text;
  final double? end;
  final double? top;
  final double width;
  final double height;
  final double strokeWidth;

  const CircleBorderShadowWidget({
    super.key,
    this.padding,
    required this.text,
    this.end,
    this.top,
    required this.width,
    required this.height,
    required this.strokeWidth,
  });

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return PositionedDirectional(
      end: end,
      top: top,
      child: InkWell(
        onTap: () => context.go(AppRouterConstant.TEST_PAGE, extra: text),
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: colorScheme.primary, width: strokeWidth),
            color: colorScheme.surface,
          ),
          padding:
              padding ?? EdgeInsets.symmetric(horizontal: AppSizes.PADDING_4),
          child: FittedBox(
            child: UiLabelSmall(
              text,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
