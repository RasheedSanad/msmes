import 'package:flutter/material.dart';
import '../../../../core/ui/pages/ui_scaffold.dart';
import '../../../../core/ui/widgets/text/ui_title_large.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const UiScaffold(
      body: Center(
        child: UiTitleLarge('more'),
      ),
    );
  }
}
