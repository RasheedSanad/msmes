import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:msmes_app/core/res/values_manager.dart';
import 'package:msmes_app/core/ui/pages/ui_error.dart';
import 'package:msmes_app/core/ui/pages/ui_failure.dart';
import 'package:msmes_app/core/ui/pages/ui_loading.dart';
import 'package:msmes_app/core/ui/widgets/sized_box/gap_w18.dart';
import 'package:msmes_app/core/ui/widgets/text/ui_label_large.dart';
import 'package:msmes_app/features/home/presentation/bloc/home_bloc.dart';

import '../../../../core/res/decoration_manager.dart';
import '../../../../core/ui/widgets/cards/ui_card.dart';
import '../../../../core/ui/widgets/text/ui_body_smale.dart';
import '../../../../core/ui/widgets/text/ui_title_small.dart';
import '../../domain/entities/service_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ServicesWidget extends StatelessWidget {
  const ServicesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String _PAGE_NAME = 'MostServicesWidget';

    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        log('1:${state}', name: _PAGE_NAME);
        if (state is HomeServicesLoading) {
          return const UiLoading();
        }
        if (state is HomeServicesLoaded) {
          print('Rendering services: ${state.services}');
          return _getWidget(context, state.services);
        }
        if (state is HomeServicesLoadFailure) {
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
    context.read<HomeBloc>()..add(OnGetServices());
  }

  Widget _getWidget(BuildContext context, List<ServiceEntity> services) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      // this key for test
      key: const Key("services_data"),
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
