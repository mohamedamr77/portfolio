import 'package:flutter/material.dart';
import 'package:portfolioapp/core/utils/size_config.dart';
import 'package:portfolioapp/feature/dashboard/preseantation/view/widget/tablet/dashboard_tablet_layout.dart';
import '../../../../../core/shared_widget/adabtive_layout.dart';
import 'desktop/dashboard_desktop_layout.dart';

class DashboardBody extends StatefulWidget {
  const DashboardBody({super.key});

  @override
  State<DashboardBody> createState() => _DashboardBodyState();
}

class _DashboardBodyState extends State<DashboardBody> {
  final ScrollController scrollController = ScrollController();

  final GlobalKey homeKey = GlobalKey();
  final GlobalKey aboutMeKey = GlobalKey();
  final GlobalKey servicesKey = GlobalKey();
  final GlobalKey projectsKey = GlobalKey();
  final GlobalKey certificatesKey = GlobalKey();
  final GlobalKey contactKey = GlobalKey();

  void scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return
      MediaQuery.of(context).size.width < SizeConfig.tabletSize ?
      const SizedBox():
      MediaQuery.of(context).size.width < SizeConfig.tabletSize ?
      DashboardTabletLayout(
        scrollControllerPage: scrollController,
        homeKey: homeKey,
        aboutMeKey: aboutMeKey,
        servicesKey: servicesKey,
        projectsKey: projectsKey,
        certificatesKey: certificatesKey,
        contactKey: contactKey,
      ) :
      DashboardDesktopLayout(
        scrollControllerPage: scrollController,
        homeKey: homeKey,
        aboutMeKey: aboutMeKey,
        servicesKey: servicesKey,
        projectsKey: projectsKey,
        certificatesKey: certificatesKey,
        contactKey: contactKey,
        scrollToSection: scrollToSection,
      );
  }
}
