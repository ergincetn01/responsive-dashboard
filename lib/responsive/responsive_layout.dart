import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget tabletScaffold;
  final Widget desktopScaffold;
  final Widget mobileScaffold;

  ResponsiveLayout(
      {super.key,
      required this.desktopScaffold,
      required this.mobileScaffold,
      required this.tabletScaffold});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1100) {
        return desktopScaffold;
      } else if (constraints.maxWidth > 600) {
        return tabletScaffold;
      } else {
        return mobileScaffold;
      }
    });
  }
}
