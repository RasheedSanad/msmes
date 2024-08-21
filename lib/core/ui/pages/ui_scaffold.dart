import 'package:flutter/material.dart';

class UiScaffold extends StatelessWidget {
  const UiScaffold({
    super.key,
    required this.body,
    this.bottomNavigationBar,
    this.extendBody = false,
    this.backgroundColor,
    this.floatingActionButton,
    this.appBar,
    this.backgroundImageColor,
    this.bottomSheet,
    this.isBakgroundImageVisible = true,
    this.isFullHeight = false,
  });
  final Widget? body;
  final Widget? bottomNavigationBar;
  final bool extendBody;
  final Color? backgroundColor;
  final Color? backgroundImageColor;
  final Widget? floatingActionButton;
  final PreferredSizeWidget? appBar;
  final Widget? bottomSheet;
  final bool isBakgroundImageVisible;
  final bool isFullHeight;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Container(
      color: colorScheme.secondary,
      child: SafeArea(
        // left: false,
        // right: false,
        // bottom: false,
        child: Scaffold(
          backgroundColor: backgroundColor,
          extendBody: extendBody,
          bottomNavigationBar: bottomNavigationBar,
          appBar: appBar,
          body: Container(
            width: size.width,
            height: isFullHeight ? size.height : null,
            child: body,
          ),
          bottomSheet: bottomSheet,
          floatingActionButton: floatingActionButton,
        ),
      ),
    );
  }
}
