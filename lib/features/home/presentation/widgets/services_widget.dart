import 'package:flutter/material.dart';
import 'package:msmes_app/core/res/values_manager.dart';
import 'package:msmes_app/core/ui/widgets/sized_box/gap_w18.dart';

import '../../../../core/res/decoration_manager.dart';
import '../../../../core/ui/widgets/cards/ui_card.dart';
import '../../../../core/ui/widgets/text/ui_body_smale.dart';
import '../../../../core/ui/widgets/text/ui_title_small.dart';
import '../../domain/entities/service_entity.dart';

class MostServicesWidget extends StatelessWidget {
  const MostServicesWidget({
    super.key,
    required this.services,
  });
  final List<ServiceEntity> services;
  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const GapW18(),
            ...List.generate(
              services.length,
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
                width: size.width * 0.6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UiTitleSmall(services[index].title),
                    UiBodySmall(
                      services[index].content,
                      maxLines: 2,
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
