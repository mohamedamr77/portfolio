import 'package:flutter/material.dart';
import 'package:portfolioapp/feature/dashboard/preseantation/view/widget/tablet/dashboard_tablet_layout.dart';
import '../../../../../core/shared_widget/adabtive_layout.dart';
import 'dashboard_small_phone_layout.dart';
import 'mobile_layout/dashboard_mobile_layout.dart';
import 'desktop/dashboard_desktop_layout.dart';

class DashboardBody extends StatefulWidget {
  const DashboardBody({super.key});

  @override
  State<DashboardBody> createState() => _DashboardBodyState();
}

class _DashboardBodyState extends State<DashboardBody> {
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    debugPrint("Width : ${MediaQuery.of(context).size.width}");
    return AdaptiveLayout(
      mobileLayout: (context) => DashboardMobileLayout(
        scrollControllerPage: scrollController,
      ),
      tabletLayout: (context) => DashboardTabletLayout(
        scrollControllerPage: scrollController,
      ),
      desktopLayout: (context) => DashboardDesktopLayout(
        scrollControllerPage: scrollController,
      ),
      smallPhonesLayout: (context) => DashboardSmallPhoneLayout(scrollControllerPage: scrollController,),
    );
  }
}
