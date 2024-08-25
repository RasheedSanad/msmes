import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:msmes_app/config/localization/constants_loclization.dart';
import 'package:msmes_app/core/res/resources_manager.dart';
import 'package:msmes_app/core/res/values_manager.dart';
import 'package:msmes_app/core/ui/widgets/app_bar/ui_app_bar.dart';
import 'package:msmes_app/core/ui/widgets/images_icons/ui_image_asset.dart';
import 'package:msmes_app/core/ui/widgets/sized_box/gap_h10.dart';
import 'package:msmes_app/core/ui/widgets/sized_box/gap_h14.dart';
import 'package:msmes_app/core/ui/widgets/sized_box/gap_h20.dart';
import 'package:msmes_app/core/ui/widgets/sized_box/gap_h4.dart';
import 'package:msmes_app/core/ui/widgets/sized_box/ui_divider.dart';
import 'package:msmes_app/core/ui/widgets/text/ui_body_medium.dart';
import 'package:msmes_app/core/ui/widgets/text/ui_title_medium.dart';
import 'package:msmes_app/features/home/presentation/bloc_consultants/home_consultants_bloc.dart';
import 'package:msmes_app/features/home/presentation/widgets/idea_diagram_widget.dart';

import '../../../../core/ui/pages/ui_scaffold.dart';

import '../../../../core/utils/enum_sex.dart';
import '../../domain/entities/consultant_entity.dart';
import '../../domain/entities/service_entity.dart';
import '../bloc/home_bloc.dart';
import '../widgets/consultants_widget.dart';
import '../widgets/services_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<HomeBloc>()..add(OnGetServices());
    context.read<HomeConsultantsBloc>()..add(OnGetConsultants());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return UiScaffold(
      appBar: UiAppBar(
        title: 'MSMEs',
        actionChild: Padding(
          padding:
              EdgeInsetsDirectional.symmetric(vertical: AppSizes.PADDING_10),
          child: UiImageAsset(
            R.imagesPath.undp_logo,
            fit: BoxFit.contain,
          ),
        ),
      ),
      isFullHeight: true,
      body: ListView(
        children: [
          const GapH10(),
          SizedBox(
            height: size.height * 0.4,
            width: size.width,
            child: IdeaDiagram(),
          ),
          //
          // const IdeaHomeWidget(),
          // divider
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.PADDING_18),
            child: const UiDivider(),
          ),
          // prominent_service
          _titleWithSubTitle(C.prominent_service.tr(), C.all.tr()),
          const GapH4(),
          const ServicesWidget(),
          const GapH14(),
          // distinguished_consultants
          _titleWithSubTitle(C.distinguished_consultants.tr(), C.all.tr()),
          const GapH4(),
          const ConsultantsWidget(),
          const GapH20(),

          //
        ],
      ),
    );
  }

  Widget _titleWithSubTitle(String title, String subTitle) => Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.PADDING_18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            UiTitleMedium(title),
            UiBodyMedium(subTitle),
          ],
        ),
      );
}
