import 'package:flutter/material.dart';
import 'package:portfolioapp/feature/dashboard/preseantation/view/widget/tablet/dashboard_tablet_layout.dart';
import '../../../../../core/shared_widget/adabtive_layout.dart';
import 'desktop/dashboard_desktop_layout.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileLayout: (context) => const SizedBox(),
      tabletLayout: (context) => const DashboardTabletLayout(),
      desktopLayout: (context) => const DashboardDesktopLayout(),
    );
  }
}
