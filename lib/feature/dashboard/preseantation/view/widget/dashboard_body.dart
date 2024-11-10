import 'package:flutter/material.dart';
import '../../../../../core/shared_widget/adabtive_layout.dart';
import 'desktop/dashboard_desktop_layout.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileLayout: (context) => const SizedBox(),
      tabletLayout: (context) => const SizedBox(),
      desktopLayout: (context) => const DashboardDesktopLayout(),
    );
  }
}
