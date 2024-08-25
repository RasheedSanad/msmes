import 'package:flutter/material.dart';
import 'package:msmes_app/core/ui/pages/ui_scaffold.dart';
import 'package:msmes_app/core/ui/widgets/app_bar/ui_app_bar_with_back.dart';
import 'package:msmes_app/core/ui/widgets/text/ui_headline_medium.dart';

class TestPage extends StatelessWidget {
  const TestPage({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return UiScaffold(
      appBar: UiAppBarWithBack(title: title),
      body: Center(
        child: UiHeadlineMedium(title),
      ),
    );
  }
}
