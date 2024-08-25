import 'package:flutter/material.dart';

import '../widgets/text/ui_label_large.dart';
import 'ui_scaffold.dart';

class UiWrongPage extends StatelessWidget {
  const UiWrongPage({super.key, this.message});
  final String? message;

  @override
  Widget build(BuildContext context) {
    // TODO: ADD text arabic or english
    return UiScaffold(
      isFullHeight: true,
      appBar: AppBar(
        title: Text("go back"),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: UiLabelLarge(
                  message ?? "Wrong page",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
