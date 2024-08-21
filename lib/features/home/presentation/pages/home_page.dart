import 'package:flutter/material.dart';
import '../../../../core/ui/pages/ui_scaffold.dart';
import '../../../../core/ui/widgets/text/ui_title_large.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const UiScaffold(
      body: Center(
        child: UiTitleLarge('home'),
      ),
    );
  }
}
