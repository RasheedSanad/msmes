import 'package:flutter/material.dart';
import 'package:msmes_app/core/res/resources_manager.dart';
import 'package:msmes_app/core/ui/widgets/images_icons/ui_svg_image_asset.dart';
import 'package:msmes_app/core/ui/widgets/sized_box/gap_w18.dart';

import '../../../../core/res/decoration_manager.dart';
import '../../../../core/res/values_manager.dart';
import '../../../../core/ui/widgets/cards/ui_card.dart';
import '../../../../core/ui/widgets/sized_box/gap_h4.dart';
import '../../../../core/ui/widgets/text/ui_body_smale.dart';
import '../../../../core/ui/widgets/text/ui_title_small.dart';
import '../../domain/entities/consultant_entity.dart';

class ConsultantsWidget extends StatelessWidget {
  const ConsultantsWidget({
    super.key,
    required this.consultants,
  });
  final List<ConsultantEntity> consultants;

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const GapW18(),
            ...List.generate(
              consultants.length,
              (index) => UiCard(
                decoration: DecorationManager.d1(
                  context,
                  color: colorScheme.surface,
                ),
                margin: EdgeInsetsDirectional.only(
                  end: AppSizes.PADDING_10,
                  top: AppSizes.MARGIN_2,
                  bottom: AppSizes.MARGIN_2,
                ),
                width: size.width * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    UiSvgImageAsset(
                      consultants[index].sex.isMale
                          ? R.svgPath.man_profile
                          : R.svgPath.womain_profile,
                      height: size.width * 0.2,
                    ),
                    const GapH4(),
                    UiTitleSmall(consultants[index].name),
                    UiBodySmall(
                      consultants[index].lastJob,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...List.generate(
                          5,
                          (i) => UiSvgImageAsset(
                            consultants[index].starts > i
                                ? R.svgPath.star_fill
                                : R.svgPath.star_outline,
                            color: consultants[index].starts > i
                                ? const Color(0xffF79F00)
                                : null,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
