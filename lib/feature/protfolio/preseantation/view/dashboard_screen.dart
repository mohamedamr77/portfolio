import 'package:flutter/material.dart';
import 'package:portfolioapp/feature/protfolio/preseantation/view/widget/dashboard_body.dart';
import 'package:portfolioapp/feature/protfolio/preseantation/view/widget/mobile_layout/custom_drawer.dart';


class PortfolioScreen extends StatelessWidget {
  static const id = "/PortfolioScreen";

  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PortfolioBody(),
      endDrawer: CustomDrawer(),
    );
  }
}
