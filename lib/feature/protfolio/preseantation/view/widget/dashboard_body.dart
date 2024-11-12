import 'package:flutter/material.dart';
import 'package:portfolioapp/feature/protfolio/preseantation/view/widget/tablet/dashboard_tablet_layout.dart';
import '../../../../../core/shared_widget/adabtive_layout.dart';
import 'dashboard_small_phone_layout.dart';
import 'desktop/dashboard_desktop_layout.dart';
import 'mobile_layout/dashboard_mobile_layout.dart';

class PortfolioBody extends StatefulWidget {
  const PortfolioBody({super.key});

  @override
  State<PortfolioBody> createState() => _PortfolioBodyState();
}

class _PortfolioBodyState extends State<PortfolioBody> {
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    debugPrint("Width : ${MediaQuery.of(context).size.width}");
    return AdaptiveLayout(
      mobileLayout: (context) => PortfolioMobileLayout(
        scrollControllerPage: scrollController,
      ),
      tabletLayout: (context) => PortfolioTabletLayout(
        scrollControllerPage: scrollController,
      ),
      desktopLayout: (context) => PortfolioDesktopLayout(
        scrollControllerPage: scrollController,
      ),
      smallPhonesLayout: (context) => PortfolioSmallPhoneLayout(scrollControllerPage: scrollController,),
    );
  }
}
