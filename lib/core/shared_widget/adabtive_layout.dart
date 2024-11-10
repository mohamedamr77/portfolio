import 'package:flutter/material.dart';
import '../utils/size_config.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
        this.mobileLayout,
        this.tabletLayout,
        this.desktopLayout});
  final Widget? mobileLayout, tabletLayout, desktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < SizeConfig.tabletSize) {
          return mobileLayout ?? Container(); // Provide a default non-nullable widget
        } else if (constraints.maxWidth < SizeConfig.desktopSize) {
          return tabletLayout ?? Container(); // Provide a default non-nullable widget
        } else {
          return desktopLayout ?? Container(); // Provide a default non-nullable widget
        }
      },
    );
  }
}