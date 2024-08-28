import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:msmes_app/core/res/resources_manager.dart';
import 'package:msmes_app/core/ui/widgets/images_icons/ui_svg_image_asset.dart';
import 'package:msmes_app/core/ui/widgets/sized_box/gap_w18.dart';
import 'package:msmes_app/core/ui/widgets/text/ui_label_large.dart';

import '../../../../core/res/decoration_manager.dart';
import '../../../../core/res/values_manager.dart';
import '../../../../core/ui/pages/ui_error.dart';
import '../../../../core/ui/pages/ui_failure.dart';
import '../../../../core/ui/pages/ui_loading.dart';
import '../../../../core/ui/widgets/cards/ui_card.dart';
import '../../../../core/ui/widgets/sized_box/gap_h4.dart';
import '../../../../core/ui/widgets/text/ui_body_smale.dart';
import '../../../../core/ui/widgets/text/ui_title_small.dart';
import '../../domain/entities/consultant_entity.dart';
import '../bloc_consultants/home_consultants_bloc.dart';

class ConsultantsWidget extends StatelessWidget {
  const ConsultantsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeConsultantsBloc, HomeConsultantsState>(
      builder: (context, state) {
        if (state is HomeConsultantsLoading) {
          return const UiLoading();
        }
        if (state is HomeConsultantsLoaded) {
          return _getWidget(context, state.consultants);
        }
        if (state is HomeConsultantsLoadFailure) {
          return UiFailure(
            appFailure: state.appFailure,
            onTap: () => _onTap(context),
          );
        }
        return UiError(
          onTap: () => _onTap(context),
        );
      },
    );
  }

  _onTap(BuildContext context) {
    context.read<HomeConsultantsBloc>()..add(OnGetConsultants());
  }

  Widget _getWidget(BuildContext context, List<ConsultantEntity> consultants) {
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
