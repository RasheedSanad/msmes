import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:msmes_app/config/localization/constants_loclization.dart';
import 'package:msmes_app/core/res/values_manager.dart';
import 'package:msmes_app/core/ui/widgets/images_icons/ui_image_asset.dart';
import 'dart:math';

import 'package:msmes_app/core/ui/widgets/text/ui_label_small.dart';

import '../../../../core/res/resources_manager.dart';
import 'idea_home/center_icon_widget.dart';
import 'idea_home/circle_border_shadow_widget.dart';

class IdeaDiagram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return LayoutBuilder(
      builder: (context, constraints) {
        double centerDiameter = constraints.maxWidth * 0.2;
        double circleDiameter = constraints.maxWidth * 0.18;
        double rectWidth = constraints.maxWidth * 0.35;
        double rectHeight = constraints.maxHeight * 0.12;
        double strokeWidth = 2.0;

        final centerX = constraints.maxWidth / 2;
        final centerY = constraints.maxHeight / 2;

        return Center(
          child: Stack(
            children: [
              // Lines connected to the center
              PositionedDirectional(
                end: 0,
                top: 0,
                child: CustomPaint(
                  size: Size(constraints.maxWidth, constraints.maxHeight),
                  painter: LinePainter(centerX, centerY, constraints,
                      centerDiameter / 2, circleDiameter / 2, rectHeight / 2),
                ),
              ),

              //Central circle
              PositionedDirectional(
                end: centerX - centerDiameter / 2,
                top: centerY - centerDiameter / 2,
                child: Container(
                  width: centerDiameter,
                  height: centerDiameter,
                  decoration: BoxDecoration(
                    color: colorScheme.primary,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: colorScheme.primary.withOpacity(0.5),
                        spreadRadius: 10,
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lightbulb,
                            color: colorScheme.onPrimary,
                            size: centerDiameter * 0.3),
                        Text(C.idea.tr(),
                            style: TextStyle(
                                color: colorScheme.onPrimary,
                                fontSize: centerDiameter * 0.15)),
                      ],
                    ),
                  ),
                ),
              ),

              // * Surrounding circles
              // store_creation

              CircleBorderShadowWidget(
                text: C.store_creation.tr(),
                strokeWidth: strokeWidth,
                top: constraints.maxHeight * 0.5 - circleDiameter / 2,
                end: constraints.maxWidth * 0.1 - circleDiameter / 2,
                width: circleDiameter,
                height: circleDiameter,
              ),
              CenterIconWidget(
                svgPath: R.svgPath.basket_fill,
                top: constraints.maxHeight * 0.52 - circleDiameter / 2,
                end: constraints.maxWidth * 0.26 - circleDiameter / 2,
                width: circleDiameter / 2,
                height: circleDiameter / 2,
              ),
              // consultation
              CircleBorderShadowWidget(
                text: C.consultation.tr(),
                strokeWidth: strokeWidth,
                end: constraints.maxWidth * 0.9 - circleDiameter / 2,
                top: constraints.maxHeight * 0.5 - circleDiameter / 2,
                width: circleDiameter,
                height: circleDiameter,
              ),
              CenterIconWidget(
                svgPath: R.svgPath.consulation_outline,
                end: constraints.maxWidth * 0.82 - circleDiameter / 2,
                top: constraints.maxHeight * 0.53 - circleDiameter / 2,
                width: circleDiameter / 2,
                height: circleDiameter / 2,
              ),

              // products
              CircleBorderShadowWidget(
                text: C.products.tr(),
                strokeWidth: strokeWidth,
                end: constraints.maxWidth * 0.15 - circleDiameter / 2,
                top: constraints.maxHeight * 0.8 - circleDiameter / 2,
                width: circleDiameter,
                height: circleDiameter,
              ),
              CenterIconWidget(
                svgPath: R.svgPath.product_outlined,
                end: constraints.maxWidth * 0.2 - circleDiameter / 2,
                top: constraints.maxHeight * 0.75 - circleDiameter / 2,
                width: circleDiameter / 2,
                height: circleDiameter / 2,
              ),

              // courses
              CircleBorderShadowWidget(
                text: C.courses.tr(),
                strokeWidth: strokeWidth,
                end: constraints.maxWidth * 0.85 - circleDiameter / 2,
                top: constraints.maxHeight * 0.8 - circleDiameter / 2,
                width: circleDiameter,
                height: circleDiameter,
              ),
              CenterIconWidget(
                svgPath: R.svgPath.graduation_cap,
                end: constraints.maxWidth * 0.91 - circleDiameter / 2,
                top: constraints.maxHeight * 0.71 - circleDiameter / 2,
                width: circleDiameter,
                height: circleDiameter,
              ),
              // loan
              CircleBorderShadowWidget(
                text: C.loan.tr(),
                strokeWidth: strokeWidth,
                end: constraints.maxWidth * 0.18 - circleDiameter / 2,
                top: constraints.maxHeight * 0.2 - circleDiameter / 2,
                width: circleDiameter,
                height: circleDiameter,
                padding: EdgeInsets.symmetric(horizontal: AppSizes.PADDING_12),
              ),
              PositionedDirectional(
                end: constraints.maxWidth * 0.32 - circleDiameter / 2,
                top: constraints.maxHeight * 0.26 - circleDiameter / 2,
                child: InkWell(
                  child: Container(
                    width: circleDiameter / 1.2,
                    height: circleDiameter / 1.2,
                    padding:
                        EdgeInsets.symmetric(horizontal: AppSizes.PADDING_4),
                    child: FittedBox(
                      child: UiImageAsset(R.imagesPath.loan),
                    ),
                  ),
                ),
              ),

              // financial consultation
              CircleBorderShadowWidget(
                text: C.financial_consultation.tr(),
                strokeWidth: strokeWidth,
                end: constraints.maxWidth * 0.83 - circleDiameter / 2,
                top: constraints.maxHeight * 0.2 - circleDiameter / 2,
                width: circleDiameter,
                height: circleDiameter,
              ),
              CenterIconWidget(
                svgPath: R.svgPath.financial_consultation,
                end: constraints.maxWidth * 0.76 - circleDiameter / 2,
                top: constraints.maxHeight * 0.3 - circleDiameter / 2,
                width: circleDiameter / 1.7,
                height: circleDiameter / 1.7,
              ),
              // upper rectangle
              PositionedDirectional(
                end: constraints.maxWidth * 0.5 - rectWidth / 2,
                top: constraints.maxHeight * 0.1 -
                    rectHeight / 2, 
                child: Container(
                  width: rectWidth,
                  height: rectHeight,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: colorScheme.primary, width: strokeWidth),
                    borderRadius: BorderRadius.circular(30),
                    color: colorScheme.surface,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: AppSizes.PADDING_4),
                  child: FittedBox(
                    child: UiLabelSmall(
                      C.business_startup_guide.tr(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class LinePainter extends CustomPainter {
  final double centerX;
  final double centerY;
  final BoxConstraints constraints;
  final double centerRadius;
  final double circleRadius;
  final double rectRadius;

  LinePainter(this.centerX, this.centerY, this.constraints, this.centerRadius,
      this.circleRadius, this.rectRadius);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey[400]!
      ..strokeWidth = 2.0;

    // draw lines
    _drawLine(canvas, paint, centerX, centerY, constraints.maxWidth * 0.1,
        constraints.maxHeight * 0.5);
    _drawLine(canvas, paint, centerX, centerY, constraints.maxWidth * 0.9,
        constraints.maxHeight * 0.5);
    _drawLine(canvas, paint, centerX, centerY, constraints.maxWidth * 0.1,
        constraints.maxHeight * 0.8);
    _drawLine(canvas, paint, centerX, centerY, constraints.maxWidth * 0.9,
        constraints.maxHeight * 0.8);
    _drawLine(canvas, paint, centerX, centerY, constraints.maxWidth * 0.18,
        constraints.maxHeight * 0.2);
    _drawLine(canvas, paint, centerX, centerY, constraints.maxWidth * 0.83,
        constraints.maxHeight * 0.2);
    _drawLine(canvas, paint, centerX, centerY, constraints.maxWidth * 0.5,
        constraints.maxHeight * 0.01 - rectRadius);
  }

  void _drawLine(Canvas canvas, Paint paint, double startX, double startY,
      double endX, double endY) {
    // Calculate the direction of the line
    double angle = atan2(endY - startY, endX - startX);

    // Calculate the endpoints that stop at the edges of the circle
    double startXOffset = startX + centerRadius * cos(angle);
    double startYOffset = startY + centerRadius * sin(angle);

    double endXOffset = endX -
        (endY == constraints.maxHeight * 0.1 ? rectRadius : circleRadius) *
            cos(angle);
    double endYOffset = endY -
        (endY == constraints.maxHeight * 0.1 ? rectRadius : circleRadius) *
            sin(angle);

    canvas.drawLine(Offset(startXOffset, startYOffset),
        Offset(endXOffset, endYOffset), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
