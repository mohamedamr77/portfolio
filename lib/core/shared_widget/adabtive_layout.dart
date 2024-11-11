import 'package:flutter/material.dart';
import '../utils/size_config.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout,
      required this.smallPhonesLayout});
  final WidgetBuilder mobileLayout,
      tabletLayout,
      desktopLayout,
      smallPhonesLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < SizeConfig.mobileSize) {
          return smallPhonesLayout(context);
        } else if (constraints.maxWidth < SizeConfig.tabletSize) {
          return mobileLayout(context);
        } else if (constraints.maxWidth < SizeConfig.desktopSize) {
          return tabletLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
